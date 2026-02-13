import { useEffect, useState } from "react";
import { useParams, useNavigate } from "react-router-dom";
import axios from "axios";
import "./Employee.css";

function EmployeeProfile() {
  const { employeeId } = useParams();
  const navigate = useNavigate();

  const [employee, setEmployee] = useState({});
  const [edit, setEdit] = useState(false);
  const [showModal, setShowModal] = useState(false);
  const [image, setImage] = useState(null);   // ✅ new image state

  useEffect(() => {
    loadEmployee();
  }, []);

  const loadEmployee = async () => {
    const res = await axios.get(
      `http://localhost:5200/api/Employee/${employeeId}`
    );
    setEmployee(res.data);
  };

  const saveProfile = async () => {
    const formData = new FormData();

    Object.keys(employee).forEach(key => {
      formData.append(key, employee[key]);
    });

    formData.append("modifiedBy", employee.username);

    if (image) {
      formData.append("ProfileImage", image);
    }

    await axios.put(
      `http://localhost:5200/api/Employee/${employeeId}`,
      formData,
      { headers: { "Content-Type": "multipart/form-data" } }
    );

    setEdit(false);
    setShowModal(true);
  };

  return (
    
  <div className="profile-wrapper">

    {/* HERO */}
    <div className="profile-hero"></div>

    <div className="profile-card">

      {/* TOP BAR */}
      <div className="top-bar">
        <div className="page-title">My Profile</div>
        <button className="logout-btn" onClick={() => navigate("/")}>
          Logout
        </button>
      </div>

      {/* PROFILE HEADER */}
      <div className="profile-header">
        <div className="profile-avatar">
  <img
    src={
      image
        ? URL.createObjectURL(image)   // 👈 preview new image
        : employee.profileImageBase64
        ? `data:image/png;base64,${employee.profileImageBase64}`
        : "/default-avatar.png"
    }
    alt="Profile"
  />

  {edit && (
    <label className="avatar-overlay">
      ✎
      <input
        type="file"
        accept="image/*"
        hidden
        onChange={(e) => setImage(e.target.files[0])}
      />
    </label>
  )}
</div>

        <div className="profile-info">
          <h2>{employee.name}</h2>
          <span>{employee.designation}</span>
        </div>
      </div>

      {/* FORM */}
      <div className="profile-grid">

        <div className="field">
          <label>Username</label>
          <input value={employee.username || ""} disabled />
        </div>

        <div className="field">
          <label>Name</label>
          <input
            value={employee.name || ""}
            disabled={!edit}
            onChange={(e) =>
              setEmployee({ ...employee, name: e.target.value })
            }
          />
        </div>

        <div className="field">
          <label>Designation</label>
          <input
            value={employee.designation || ""}
            disabled={!edit}
            onChange={(e) =>
              setEmployee({ ...employee, designation: e.target.value })
            }
          />
        </div>

        {edit && (
          <div className="field">
            <label>New Password</label>
            <input
              type="password"
              placeholder="Enter new password"
              onChange={(e) =>
                setEmployee({ ...employee, password: e.target.value })
              }
            />
          </div>
        )}

        <div className="field full">
          <label>Address</label>
          <input
            value={employee.address || ""}
            disabled={!edit}
            onChange={(e) =>
              setEmployee({ ...employee, address: e.target.value })
            }
          />
        </div>

        <div className="field">
          <label>Skillset</label>
          <input
            value={employee.skillset || ""}
            disabled={!edit}
            onChange={(e) =>
              setEmployee({ ...employee, skillset: e.target.value })
            }
          />
        </div>

      </div>

      {/* BUTTON */}
      <div className="button-row">
        {edit ? (
          <button className="save-btn" onClick={saveProfile}>
            Save Changes
          </button>
        ) : (
          <button className="edit-btn" onClick={() => setEdit(true)}>
            Edit Profile
          </button>
        )}
      </div>
    </div>

  



      {showModal && (
        <div className="modal-overlay">
          <div className="modal-box">
            <h4>Profile Updated</h4>
            <p>Your changes have been saved successfully.</p>
            <button onClick={() => setShowModal(false)}>OK</button>
          </div>
        </div>
      )}

    </div>
  );
}

export default EmployeeProfile;
