import React from "react";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import Login from "./pages/Login";
import Register from "./pages/Register";
import AdminDashboard from "./components/AdminDashboard";
import EmployeeProfile from "./pages/EmployeeProfile";

function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<Login />} />
        <Route path="/register" element={<Register />} />
        <Route path="/admin" element={<AdminDashboard />} />
        <Route path="/employee/:employeeId" element={<EmployeeProfile />} />
      </Routes>
    </BrowserRouter>
  );
}

export default App;
