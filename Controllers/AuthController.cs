using EmployeeManagement.API.Data;
using EmployeeManagement.API.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using System.Data;

namespace EmployeeManagement.API.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class AuthController : ControllerBase
    {
        private readonly DbHelper _db;

        public AuthController(DbHelper db)
        {
            _db = db;
        }

        [HttpPost("login")]
        public IActionResult Login(string username, string password)
        {
            using SqlConnection conn = _db.GetConnection();
            using SqlCommand cmd = new SqlCommand("sp_Login", conn);

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Username", username);

            conn.Open();
            var reader = cmd.ExecuteReader();

            if (!reader.Read())
                return Unauthorized("Invalid credentials");

            string storedHash = reader["Password"].ToString();

            // 🔐 Verify hashed password
            if (!BCrypt.Net.BCrypt.Verify(password, storedHash))
                return Unauthorized("Invalid credentials");

            if (Convert.ToInt32(reader["Status"]) == 0)
                return BadRequest("Your account has been disabled.");

            return Ok(new
            {
                EmployeeId = reader["EmployeeId"],
                Name = reader["Name"],
                Role = reader["Role"]
            });
        }





        [HttpPost("register")]
        public async Task<IActionResult> Register([FromForm] RegisterRequest request)

        {
            try
            {
                using SqlConnection conn = _db.GetConnection();
                using SqlCommand cmd = new SqlCommand("sp_RegisterEmployee", conn);

                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Name", request.Name);
                cmd.Parameters.AddWithValue("@Designation", request.Designation);
                cmd.Parameters.AddWithValue("@Address", request.Address);
                cmd.Parameters.AddWithValue("@Department", request.Department);
                cmd.Parameters.AddWithValue("@JoiningDate", request.JoiningDate);
                cmd.Parameters.AddWithValue("@Skillset", request.Skillset);
                cmd.Parameters.AddWithValue("@Username", request.Username);
                // 🔐 Hash password before storing
                string hashedPassword = BCrypt.Net.BCrypt.HashPassword(request.Password);
                cmd.Parameters.AddWithValue("@Password", hashedPassword);
                // 🔽 Convert image to byte[]
                byte[]? imageBytes = null;

                if (request.ProfileImage != null)
                {
                    using (var ms = new MemoryStream())
                    {
                        await request.ProfileImage.CopyToAsync(ms);
                        imageBytes = ms.ToArray();
                    }
                }

                cmd.Parameters.AddWithValue("@ProfileImage",
                    (object?)imageBytes ?? DBNull.Value);


                // ✅ ADD THIS OUTPUT PARAMETER
                SqlParameter resultParam = new SqlParameter("@Result", SqlDbType.Int);
                resultParam.Direction = ParameterDirection.Output;
                cmd.Parameters.Add(resultParam);

                conn.Open();
                cmd.ExecuteNonQuery();

                int result = (int)resultParam.Value;

                if (result == -1)
                {
                    return BadRequest("Username already exists. Please choose another.");
                }

                return Ok("Employee registered successfully");
            }
            catch (Exception ex)
            {
                return StatusCode(500, ex.Message); // temporary for debugging
            }
        }





    }
}
