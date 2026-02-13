import { useState } from "react";
import axios from "axios";
import { useNavigate } from "react-router-dom";
import "./Auth.css";

function Register() {
  const [error, setError] = useState("");
  const [image, setImage] = useState(null);   // ✅ image state
  const [showModal, setShowModal] = useState(false);

  const [form, setForm] = useState({
    name: "",
    designation: "",
    department: "",
    address: "",
    skillset: "",
    joiningDate: "",
    username: "",
    password: ""
  });

  const navigate = useNavigate();

  const handleChange = (e) => {
    setForm({
      ...form,
      [e.target.name]: e.target.value
    });
  };

  const submit = async (e) => {
    e.preventDefault();

    setError("");
    setShowModal(false);

    if (!form.name.trim()) {
      setError("Name is required");
      setShowModal(true);
      return;
    }

    if (!form.username.trim()) {
      setError("Username is required");
      setShowModal(true);
      return;
    }

    if (form.password.length < 6) {
      setError("Password must be at least 6 characters");
      setShowModal(true);
      return;
    }

    try {
      // ✅ SEND AS FORM DATA
      const formData = new FormData();

      Object.keys(form).forEach((key) => {
        formData.append(key, form[key]);
      });

      if (image) {
        formData.append("ProfileImage", image);
      }

      await axios.post(
        "http://localhost:5200/api/Auth/register",
        formData,
        { headers: { "Content-Type": "multipart/form-data" } }
      );

      setError("");
      setShowModal(true);

    } catch (err) {
      const message =
        err.response?.data ||
        "Registration failed. Please try again.";

      setError(message);
      setShowModal(true);
    }
  };

  return (
    <div className="auth-page">
      <div className="register-container">
        <div className="register-header">
          <h2>Create Employee Account</h2>
          <p>Enter employee details to create a new profile</p>
        </div>

        <form onSubmit={submit} className="register-form">

          <div className="form-row">
            <input name="name" placeholder="Full Name" onChange={handleChange} />
            <input name="designation" placeholder="Designation" onChange={handleChange} />
          </div>

          <div className="form-row">
            <input name="department" placeholder="Department" onChange={handleChange} />
            <input name="skillset" placeholder="Skillset" onChange={handleChange} />
          </div>

          <input name="address" placeholder="Address" onChange={handleChange} />
          <input name="joiningDate" type="date" onChange={handleChange} />

          <div className="form-row">
            <input name="username" placeholder="Username" onChange={handleChange} />
            <input name="password" type="password" placeholder="Password" onChange={handleChange} />
          </div>

          {/* ✅ IMAGE UPLOAD */}
          <div className="field">
            <label>Profile Image</label>
            <input
              type="file"
              accept="image/*"
              onChange={(e) => setImage(e.target.files[0])}
            />
          </div>

          <button type="submit" className="register-btn">
            Create Account
          </button>
        </form>
      </div>

      {showModal && (
        <div className="modal-overlay">
          <div className="modal-box">
            {error ? (
              <>
                <h4>Registration Error</h4>
                <p>{error}</p>
                <button onClick={() => setShowModal(false)}>OK</button>
              </>
            ) : (
              <>
                <h4>Registration Successful 🎉</h4>
                <p>Employee account created successfully.</p>
                <button onClick={() => navigate("/")}>
                  Go to Login
                </button>
              </>
            )}
          </div>
        </div>
      )}
    </div>
  );
}

export default Register;
