-- schema.sql
DROP DATABASE IF EXISTS employeetracker_db;
CREATE DATABASE employeetracker_db;
\c employeetracker_db;

CREATE TABLE department (
    id INTEGER PRIMARY KEY,
    department VARCHAR(500) UNIQUE NOT NULL
);

CREATE TABLE role (
    id INTEGER PRIMARY KEY,
    title VARCHAR(500) UNIQUE NOT NULL,
    department TEXT NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (department) REFERENCES department(department)
);

CREATE TABLE employee (
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(500) NOT NULL,
    last_name VARCHAR(500) NOT NULL,
    role TEXT NOT NULL,
    department TEXT NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    manager TEXT,
    FOREIGN KEY (role) REFERENCES role(title),
    FOREIGN KEY (department) REFERENCES department(department)

);    

