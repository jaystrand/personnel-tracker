    DO $$
    -- DECLARE
    --     department_exists BOOLEAN;
    --     role_exists BOOLEAN;
    --     employee_exists BOOLEAN;
    BEGIN


        INSERT INTO department (name) VALUES
            ('Sales'),
            ('Engineering'),
            ('Finance'),
            ('Legal');

        INSERT INTO role (title, department, salary) VALUES
            ('Sales Lead', 1, 100000.00),
            ('Salesperson', 1, 80000.00),
            ('Lead Engineer', 2, 150000.00),
            ('Software Engineer', 2, 120000.00),
            ('Account Manager', 3, 160000.00),
            ('Accountant', 3, 125000.00),
            ('Legal Team Lead', 4, 250000.00),
            ('Lawyer', 4, 190000.00);

        INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES
            ('John', 'Doe', 1, NULL),
            ('Mike', 'Chan', 2, 1),
            ('Ashley', 'Rodriguez', 3, 4),
            ('Kevin', 'Tupik', 4, NULL),
            ('Kunal', 'Singh', 5, NULL),
            ('Malia', 'Brown', 6, 5),
            ('Sarah', 'Lourd', 7, NULL),
            ('Tom', 'Allen', 8, 7);


        RAISE NOTICE 'Creating complete';

        EXCEPTION
            WHEN OTHERS THEN
            RAISE EXCEPTION 'Creating failed % ', SQLERRM;
            ROLLBACK;
            
    END;
    $$ LANGUAGE plpgsql; 
 
