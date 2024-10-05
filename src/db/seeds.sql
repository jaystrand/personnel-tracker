INSERT INTO department (id, name) VALUES
  (1, 'Sales'),
  (2, 'Engineering'),
  (3, 'Finance'),
  (4, 'Legal');


INSERT INTO role (, title, department, salary) VALUES
  (1, 'Sales Lead', 'Sales', 100000.00),
  (2, 'Salesperson', 'Sales', 80000.00),
  (3, 'Lead Engineer', 'Engineering', 150000.00),
  (4, 'Software Engineer', 'Engineering', 120000.00),
  (5, 'Account Manager', 'Finance', 160000.00),
  (6, 'Accountant', 'Finance', 125000.00),
  (7, 'Legal Team Lead', 'Legal', 250000.00),
  (8, 'Lawyer', 'Legal', 190000.00);

-- INSERT INTO employee (first_name, last_name, title, department, salary, manager_id) VALUES 
-- ('John', 'Doe', 2, 2, 100000,  NULL),
-- ('Mike', 'Chan', 2, 2, 80000.00, 1),
-- ('Ashley', 'Rodriquez', 3, 1, 150000, NULL),
-- ('Kevin', 'Tupik', 4, 1, 120000.00, 3);
-- ('Kunal', 'Singh', 5, 3, 16000.00, NULL),
-- ('Malia', 'Brown', 6, 3, 125000.00, 5),
-- ('Sarah', 'Lourd', 7, 4, 250000.00, NULL),
-- ('Tom', 'Allen', 8, 4, 190000.00, 7);