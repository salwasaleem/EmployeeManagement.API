import { useState } from "react";
import { useNavigate } from "react-router-dom";
import axios from "axios";
import "./Auth.css";

function Login() {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState("");
  const [showModal, setShowModal] = useState(false);
  const [showPopup, setShowPopup] = useState(false);


  const navigate = useNavigate();

  const handleLogin = async (e) => {
    e.preventDefault();

    try {
      const res = await axios.post(
        "http://localhost:5200/api/Auth/login",
        null,
        { params: { username, password } }
      );

      if (res.data.role === "Admin") {
        navigate("/admin");
      } else {
        navigate(`/employee/${res.data.employeeId}`);
      }

    }  catch (err) {
  if (err.response?.data?.includes("disabled")) {
    setError("Your account has been disabled.\nPlease contact administrator.");
    setShowPopup(true);
  } else {
    setError("Invalid username or password");
    setShowPopup(true);
  }
}


  };

  return (
  <div className="auth-page">
    <div className="auth-container">
      <h2>LOGIN</h2>

      

      <form onSubmit={handleLogin}>
        <input
          placeholder="Username"
          value={username}
          onChange={(e) => setUsername(e.target.value)}
        />

        <input
          type="password"
          placeholder="Password"
          value={password}
          onChange={(e) => setPassword(e.target.value)}
        />

        <button>Login</button>

        <p className="link" onClick={() => navigate("/register")}>
          New user? Register
        </p>
      </form>
      {showPopup && (
  <div className="modal-overlay">
    <div className="modal-box">
      <h3>Login Error</h3>
      <p>{error}</p>
      <button
  onClick={() => {
    setShowPopup(false);
    setError("");
    setUsername("");
    setPassword("");
  }}
>
  OK
</button>

      
    </div>
  </div>
)}

    </div>
  </div>
);}

export default Login;
