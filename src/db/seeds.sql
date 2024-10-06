INSERT INTO department (id, name) VALUES
  (1, 'Sales'),
  (2, 'Engineering'),
  (3, 'Finance'),
  (4, 'Legal');


INSERT INTO role (id, title, department, salary) VALUES
  (1, 'Sales Lead', 1, 100000.00),
  (2, 'Salesperson', 1, 80000.00),
  (3, 'Lead Engineer', 2, 150000.00),
  (4, 'Software Engineer', 2, 120000.00),
  (5, 'Account Manager', 3, 160000.00),
  (6, 'Accountant', 3, 125000.00),
  (7, 'Legal Team Lead', 4, 250000.00),
  (8, 'Lawyer', 4, 190000.00);

INSERT INTO employee (id, first_name, last_name, title, department, salary, manager_id) VALUES 
(1, 'John', 'Doe', 1, 1, 100000,  NULL),
(2, 'Mike', 'Chan', 2, 1, 80000.00, 1),
(3, 'Ashley', 'Rodriquez', 3, 2, 150000, NULL),
(4, 'Kevin', 'Tupik', 4, 2, 120000.00, 3),
(5, 'Kunal', 'Singh', 5, 3, 16000.00, NULL),
(6, 'Malia', 'Brown', 6, 3, 125000.00, 5),
(7, 'Sarah', 'Lourd', 7, 4, 250000.00, NULL),
(8, 'Tom', 'Allen', 8, 4, 190000.00, 7);