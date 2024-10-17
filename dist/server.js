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
    }
}
async function viewAllRoles() {
    const res = await pool.query('SELECT role.id, role.title, department.name AS department, role.salary FROM role JOIN department ON role.department = department.id');
    console.table(res.rows);
    promptUser();
}
;
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
    const departmentNames = res.rows.map((department) => department.name);
    const { title, salary, selectedDepartment } = await inquirer.prompt([
        {
            type: 'input',
            name: 'title',
            message: 'Enter the name of the role:',
        },
        {
            type: 'input',
            name: 'salary',
            message: 'Enter the name of the salary:',
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
await connectTodb();
promptUser();
