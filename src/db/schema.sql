-- schema.sql
DROP DATABASE IF EXISTS employeetracker_db;
CREATE DATABASE employeetracker_db;
\c employeetracker_db;

CREATE TABLE department (
    id INTEGER PRIMARY KEY,
    name VARCHAR(500) UNIQUE NOT NULL
);

CREATE TABLE role (
    id INTEGER PRIMARY KEY,
    title VARCHAR(500) UNIQUE NOT NULL,
    department_id INTEGER NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (department_id) REFERENCES department(id)
);

CREATE TABLE employee (
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(500) NOT NULL,
    last_name VARCHAR(500) NOT NULL,
    role_id INTEGER NOT NULL,
    department_id INTEGER NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    manager_id INTEGER,
    FOREIGN KEY (role_id) REFERENCES role(id),
    FOREIGN KEY (department_id) REFERENCES department(id),
    FOREIGN KEY (manager_id) REFERENCES employee(id)
);
