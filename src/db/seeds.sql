INSERT INTO department (name) VALUES 
('Engineering'), 
('Sales'), 
('Finance'),
('Legal');

INSERT INTO role (title, department, salary) VALUES 
('Sales Lead', 2, 100000.00),
('Salesperson', 2, 80000.00),
('Lead Engineer', 1, 150000.00),
('Software Engineer', 1, 120000.00),
('Account Manager', 3, 16000.00),
('Accountant', 3, 125000.00),
('Legal Team Lead', 4, 250000.00),
('Lawyer', 4, 190000.00);

INSERT INTO employee (first_name, last_name, title, department, salary, manager_id) VALUES 
('John', 'Doe', 2, 2, 100000,  NULL),
('Mike', 'Chan', 2, 2, 80000.00, 1),
('Ashley', 'Rodriquez', 3, 1, 150000, NULL),
('Kevin', 'Tupik', 4, 1, 120000.00, 3);
('Kunal', 'Singh', 5, 3, 16000.00, NULL),
('Malia', 'Brown', 6, 3, 125000.00, 5),
('Sarah', 'Lourd', 7, 4, 250000.00, NULL),
('Tom', 'Allen', 8, 4, 190000.00, 7);