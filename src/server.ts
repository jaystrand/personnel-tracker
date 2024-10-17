import inquirer from 'inquirer';
import { pool, connectTodb } from './connection.js';


async function promptUser() {
    

    const { action } = await inquirer.prompt([
        {
            type: 'list',
            name: 'action',
            message: 'What would you like to do?',
            choices: [
                'View all departments',
                'View all roles',
                'View all employees',
                'Add a department',
                'Add a role',
                'Add an employee',
                'Update an employee role',
                'Quit',
            ],
        },
    ]);

    
    switch (action) {
        case 'View all departments':
            await viewDepartments();
            break;
        case 'View all roles':
            await viewAllRoles();
            break;
        case 'View all employees':
            await viewEmployees();
            break;

        case 'Add a department':
            await addDepartment();
            break;
        case 'Add a role':
            await addRole();
            break;
        case 'Add an employee':
            await addEmployee();
            break;
        case 'Update an employee role':
            await updateEmployeeRole();
            break;


    }
}


   

async function viewAllRoles() {
    const res = await pool.query('SELECT role.id, role.title, department.name AS department, role.salary FROM role JOIN department ON role.department = department.id');
    console.table(res.rows);
promptUser();
    
};


    
    async function viewDepartments() {
        const res = await pool.query('SELECT * FROM department');
        console.table(res.rows);
        promptUser();
    }

    async function viewRoles() {
        const res = await pool.query('SELECT * FROM role');
        console.table(res.rows);
        promptUser();
    }

    async function viewEmployees() {
        const res = await pool.query('SELECT * FROM employee');
        console.table(res.rows);
        promptUser();
    }

    async function addDepartment() {
        const { name } = await inquirer.prompt([
            {
                type: 'input',
                name: 'name',
                message: 'Enter the name of the department:',
                
            },
        ]);
    
        await pool.query('INSERT INTO department (name) VALUES ($1)', [name]);
        console.log(`Added ${name} to the database`);
        promptUser();
    }

    async function addRole() {
        const res = await pool.query('SELECT * FROM department');
        const departmentNames= res.rows.map((department) => department.name);
        const { title, salary, selectedDepartment } = await inquirer.prompt([
            {
                type: 'input',
                name: 'title',
                message: 'Enter the name of the role:',
                
            },
            {
                type: 'input',
                name: 'salary',
                message: 'Enter the amount of the salary:',
            },
            
            {
                type: 'list',
                name: 'selectedDepartment',
                message: 'Choose the department for the role:',
                choices: departmentNames,
            },  


        ]);

const departmentId = res.rows.find((department) => department.name === selectedDepartment).id;


    
        await pool.query('INSERT INTO role (title, salary, department) VALUES ($1, $2, $3)', [title, parseFloat(salary), parseInt(departmentId)]);
        console.log(`Added ${title} to the database`);
        promptUser();
    }
    
    async function addEmployee() {
        const res = await pool.query('SELECT * FROM role');
        const roleTitles = res.rows.map((role) => role.title);
        const { firstName, lastName, selectedRole, managerId } = await inquirer.prompt([
            {
                type: 'input',
                name: 'firstName',
                message: 'Enter the first name of the employee:',
                
            },
            {
                type: 'input',
                name: 'lastName',
                message: 'Enter the last name of the employee:',
            },
            {
                type: 'list',
                name: 'selectedRole',
                message: 'Choose the role for the employee:',
                choices: roleTitles,
            },
            {
                type: 'input',
                name: 'managerId',
                message: 'Enter the manager id of the employee:',
            }
        ]);

        const roleId = res.rows.find((role) => role.title === selectedRole).id;

        await pool.query('INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ($1, $2, $3, $4)', [firstName, lastName, roleId, managerId]);
        console.log(`Added ${firstName} ${lastName} to the database`);
        promptUser();
    }

    async function updateEmployeeRole() {
        const
        res = await pool.query('SELECT * FROM employee');
        const employees = res.rows.map((employee) => `${employee.first_name} ${employee.last_name}`);
        const { selectedEmployee } = await inquirer.prompt([
            {
                type: 'list',
                name: 'selectedEmployee',
                message: 'Choose the employee to update:',
                choices: employees,
            },
        ]);

        const res2 = await pool.query('SELECT * FROM role');
        const roles = res2.rows.map((role) => role.title);
        const { selectedRole } = await inquirer.prompt([
            {
                type: 'list',
                name: 'selectedRole',
                message: 'Choose the new role for the employee:',
                choices: roles,
            },
        ]);

        const employeeId = res.rows.find((employee) => `${employee.first_name} ${employee.last_name}` === selectedEmployee).id;
        const roleId = res2.rows.find((role) => role.title === selectedRole).id;

        await pool.query('UPDATE employee SET role_id = $1 WHERE id = $2', [roleId, employeeId]);
        console.log(`Updated the role of ${selectedEmployee}`);
        promptUser();
    }


    
 
    await connectTodb();
    promptUser();

 