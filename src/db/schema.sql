DROP DATABASE IF EXISTS employeetracker_db;

CREATE DATABASE employeetracker_db;

\c employeetracker_db;

SELECT current_database();


CREATE TABLE department (
id INTEGER PRIMARY KEY,
name VARCHAR(500) UNIQUE NOT NULL

);

CREATE TABLE role (
id INTEGER PRIMARY KEY,
title VARCHAR(1) UNIQUE NOT NULL,
department INT NOT NULL,
salary DECIMAL(10, 2) NOT NULL,
FOREIGN KEY (department) REFERENCES department

);

-- CREATE TABLE employee (
-- id INTEGER PRIMARY KEY,
-- first_name VARCHAR(1) NOT NULL,
-- last_name VARCHAR(1) NOT NULL,
-- title INT NOT NULL,
-- department INT NOT NULL,
-- salary DECIMAL(10, 2) NOT NULL,
-- manager_id INT,
-- FOREIGN KEY (title) REFERENCES role,
-- FOREIGN KEY (department) REFERENCES department,
-- FOREIGN KEY (manager_id) REFERENCES employee

-- );
