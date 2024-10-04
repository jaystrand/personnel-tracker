DROP DATABASE IF EXISTS employeetracker_db;

CREATE DATABASE employeetracker_db;

\c employeetracker_db;

SELECT current_database();


CREATE TABLE department (
id SERIAL PRIMARY KEY,
name VARCHAR(30) UNIQUE NOT NULL
);

CREATE TABLE role (
id SERIAL PRIMARY KEY,
title VARCHAR(30) UNIQUE NOT NULL,
salary DECIMAL(10, 2) NOT NULL,
department_id INT NOT NULL,
FOREIGN KEY (department_id) REFERENCES department(id)

);