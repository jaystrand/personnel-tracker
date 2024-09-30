import express from 'express';
import inquirer from 'inquirer';
import { pool, connectToDb } from './connection.js';

await connectToDb();

const PORT = process.env.PORT || 3000;
const app = express();
app.use(express.json());
app.use(express.urlencoded({ extended: false }));

async function promptUser() {
    const res = await pool.query('SELECT * FROM department');
    console.table(res.rows);

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

    return { action };
}

async function viewAllRoles() {
    const res = await pool.query('SELECT role.id, role.title, department.name AS department, role.salary FROM role JOIN department ON role.department_id = department.id');

    app.use(express.urlencoded({ extended: false }));

    function propmptUser() {
        return inquirer.prompt([
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
}
};


    const { action } = await promptUser();
    switch (action) {
        case 'View all departments':
            await viewDepartments();
            break;
        case 'exit':
            pool.end();
            process.exit(0);
    }

    async function viewDepartments() {
        const res = await pool.query('SELECT * FROM department');
        console.table(res.rows);
        promptUser();
    }

    async function viewRoles() {
        const res = await pool.query('SELECT * FROM role');
        console.table(res.rows);
    }

    async function viewEmployees() {
        const res = await pool.query('SELECT * FROM employee');
        console.table(res.rows);
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









    app.use((_req, res) => {
        res.status(404).end();
    }
    );

    app.listen(PORT, () => {
        console.log(`Server is running on port ${PORT}`);
    });
    