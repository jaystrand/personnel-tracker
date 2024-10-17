SELECT employee.id, employee.first_name, employee.last_name, employee.role, department.department, employee.salary, employee.manager
FROM employee
JOIN department ON employee.department = department.department
ORDER BY employee.id ASC
LIMIT 100;





