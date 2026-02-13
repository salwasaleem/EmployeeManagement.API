import axios from "axios";

const API_BASE = "http://localhost:5200/api";

export const getAllEmployees = () => {
  return axios.get(`${API_BASE}/Employee/all`);
};

export const getEmployeeById = (id) => {
  return axios.get(`${API_BASE}/Employee/${id}`);
};

export const updateEmployee = (id, data) => {
  return axios.put(`${API_BASE}/Employee/${id}`, data);
};
