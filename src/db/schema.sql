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
    department TEXT NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (department) REFERENCES department(name)
);

-- CREATE TABLE employee (
--     id INTEGER PRIMARY KEY,
--     first_name VARCHAR(500) NOT NULL,
--     last_name VARCHAR(500) NOT NULL,
--     role_description TEXT NOT NULL,
--     department_description TEXT NOT NULL,
--     salary DECIMAL(10, 2) NOT NULL,
--     manager_description TEXT,
--     FOREIGN KEY (role_description) REFERENCES role(title),
--     FOREIGN KEY (department_description) REFERENCES department(name),
--     FOREIGN KEY (manager_description) REFERENCES employee(first_name, last_name)

-- );
