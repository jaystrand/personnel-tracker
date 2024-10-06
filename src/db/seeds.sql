INSERT INTO department (id, name) VALUES
    (1, 'Sales'),
    (2, 'Engineering'),
    (3, 'Finance'),
    (4, 'Legal');

INSERT INTO role (id, title, department, salary) VALUES
    (1, 'Sales Lead', 'Sales', 100000.00),
    (2, 'Salesperson', 'Sales', 80000.00),
    (3, 'Lead Engineer', 'Engineering', 150000.00),
    (4, 'Software Engineer', 'Engineering', 120000.00),
    (5, 'Account Manager', 'Finance', 160000.00),
    (6, 'Accountant', 'Finance', 125000.00),
    (7, 'Legal Team Lead', 'Legal', 250000.00),
    (8, 'Lawyer', 'Legal', 190000.00);

-- INSERT INTO employee (id, first_name, last_name, role_description, department_description, salary, manager_description) VALUES
--     (1, 'John', 'Doe', 'Sales Lead', 'Sales', 100000.00, NULL),
--     (2, 'Mike', 'Chan', 'Salesperson', 'Sales', 80000.00, 'John Doe'),
--     (3, 'Ashley', 'Rodriguez', 'Lead Engineer', 'Engineering', 150000.00, NULL),
--     (4, 'Kevin', 'Tupik', 'Software Engineer', 'Engineering', 120000.00, 'Ashley Rodriguez'),
--     (5, 'Kunal', 'Singh', 'Account Manager', 'Finance', 160000.00, NULL),
--     (6, 'Malia', 'Brown', 'Accountant', 'Finance', 125000.00, 'Kunal Singh'),
--     (7, 'Sarah', 'Lourd', 'Legal Team Lead', 'Legal', 250000.00, NULL),
--     (8, 'Tom', 'Allen', 'Lawyer', 'Legal', 190000.00, 'Sarah Lourd');