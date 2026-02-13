import { useEffect, useState } from "react";
import axios from "axios";
import { useNavigate } from "react-router-dom";
import "./AdminDashboard.css";

function AdminDashboard() {
  const [employees, setEmployees] = useState([]);
  const [editingId, setEditingId] = useState(null);
  const [form, setForm] = useState({});
  const [searchTerm, setSearchTerm] = useState("");
  const navigate = useNavigate();

  // Pagination
  const [currentPage, setCurrentPage] = useState(1);
  const [employeesPerPage, setEmployeesPerPage] = useState(5);

  useEffect(() => {
    loadEmployees();
  }, []);

  const loadEmployees = async () => {
    const res = await axios.get(
      "http://localhost:5200/api/Employee/all"
    );
    setEmployees(res.data);
  };

  const logout = () => {
    navigate("/");
  };

  const startEdit = (emp) => {
    setEditingId(emp.employeeId);
    setForm({ ...emp, modifiedBy: "admin" });
  };

  const cancelEdit = () => {
    setEditingId(null);
    setForm({});
  };

  const saveEdit = async () => {
    await axios.put(
      `http://localhost:5200/api/Employee/${editingId}`,
      form
    );
    setEditingId(null);
    loadEmployees();
  };

  const toggleStatus = async (id) => {
    await axios.put(
      `http://localhost:5200/api/Employee/toggle-status/${id}?modifiedBy=admin`
    );
    loadEmployees();
  };

  /* ==============================
     SEARCH (Name Only)
  ============================== */
  const filteredEmployees = employees.filter(emp =>
    emp.name.toLowerCase().includes(searchTerm.toLowerCase())
  );

  /* ==============================
     PAGINATION
  ============================== */
  const indexOfLast = currentPage * employeesPerPage;
  const indexOfFirst = indexOfLast - employeesPerPage;
  const currentEmployees = filteredEmployees.slice(indexOfFirst, indexOfLast);
  const totalPages = Math.ceil(filteredEmployees.length / employeesPerPage);

  return (
    <div className="container">

      {/* Header */}
      <div className="top-bar">
        <h2 className="page-title">Admin Dashboard</h2>
        <button className="logout-btn" onClick={logout}>
          Logout
        </button>
      </div>

      {/* Search Section (Above Table Only) */}
      <div className="search-wrapper">
        <input
          type="text"
          placeholder="Search employee by name..."
          value={searchTerm}
          onChange={(e) => {
            setSearchTerm(e.target.value);
            setCurrentPage(1);
          }}
        />
      </div>

      <table>
        <thead>
          <tr>
            <th>Name</th>
            <th>Designation</th>
            <th>Department</th>
            <th>Status</th>
            <th>Enable / Disable</th>
            <th>Edit</th>
          </tr>
        </thead>

        <tbody>
          {currentEmployees.map((emp) => (
            <tr
              key={emp.employeeId}
              className={!emp.status ? "disabled-row" : ""}
            >

              {/* Name */}
              <td>
                {editingId === emp.employeeId ? (
                  <input
                    value={form.name}
                    onChange={(e) =>
                      setForm({
                        ...form,
                        name: e.target.value,
                      })
                    }
                  />
                ) : (
                  emp.name
                )}
              </td>

              {/* Designation */}
              <td>
                {editingId === emp.employeeId ? (
                  <input
                    value={form.designation}
                    onChange={(e) =>
                      setForm({
                        ...form,
                        designation: e.target.value,
                      })
                    }
                  />
                ) : (
                  emp.designation
                )}
              </td>

              {/* Department */}
              <td>
                {editingId === emp.employeeId ? (
                  <input
                    value={form.department}
                    onChange={(e) =>
                      setForm({
                        ...form,
                        department: e.target.value,
                      })
                    }
                  />
                ) : (
                  emp.department
                )}
              </td>

              {/* Status */}
              <td>
                {emp.status ? (
                  <span className="active-status">
                    Active
                  </span>
                ) : (
                  <span className="inactive-status">
                    Disabled
                  </span>
                )}
              </td>

              {/* Toggle */}
              <td>
                <label className="switch">
                  <input
                    type="checkbox"
                    checked={emp.status}
                    onChange={() =>
                      toggleStatus(emp.employeeId)
                    }
                  />
                  <span className="slider"></span>
                </label>
              </td>

              {/* Edit */}
              <td>
                {editingId === emp.employeeId ? (
                  <>
                    <button
                      className="save"
                      onClick={saveEdit}
                    >
                      ✔
                    </button>
                    <button
                      className="cancel"
                      onClick={cancelEdit}
                    >
                      ✖
                    </button>
                  </>
                ) : (
                  <button
                    className="edit-icon"
                    onClick={() =>
                      startEdit(emp)
                    }
                  >
                    ✎
                  </button>
                )}
              </td>

            </tr>
          ))}
        </tbody>
      </table>

      {/* Pagination */}
      {totalPages > 0 && (
        <div className="pagination-wrapper">

          <div className="page-info">
            Page {currentPage} of {totalPages} ({filteredEmployees.length} items)
          </div>

          <div className="pagination">

            <button
              className="nav-btn"
              disabled={currentPage === 1}
              onClick={() => setCurrentPage(currentPage - 1)}
            >
              Prev
            </button>

            {Array.from({ length: totalPages }, (_, i) => (
              <button
                key={i}
                className={currentPage === i + 1 ? "active-page" : ""}
                onClick={() => setCurrentPage(i + 1)}
              >
                {i + 1}
              </button>
            ))}

            <button
              className="nav-btn"
              disabled={currentPage === totalPages}
              onClick={() => setCurrentPage(currentPage + 1)}
            >
              Next
            </button>

          </div>

          <div className="page-size">
            Page size:
            <select
              value={employeesPerPage}
              onChange={(e) => {
                setEmployeesPerPage(Number(e.target.value));
                setCurrentPage(1);
              }}
            >
              <option value={5}>5</option>
              <option value={10}>10</option>
              <option value={15}>15</option>
              <option value={20}>20</option>
            </select>
          </div>

        </div>
      )}

    </div>
  );
}

export default AdminDashboard;
