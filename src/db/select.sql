SELECT 
    r.id,
    r.title,
    d.name AS department,
    r.salary
FROM role r
JOIN department d ON r.department_id = d.id;

SELECT 
    e.id,
    e.first_name,
    e.last_name,
    r.title,
    d.name AS department,
    e.salary,
    CONCAT(m.first_name, ' ', m.last_name) AS manager
FROM employee e
LEFT JOIN role r ON e.role_id = r.id
LEFT JOIN department d ON e.department_id = d.id
LEFT JOIN employee m ON e.manager_id = m.id;

