# personnel-tracker![badge](https://img.shields.io/badge/license-MIT-blue)

## Table of Contents
- ###[Description](#description)
- ###[Installation](#installation)
- ###[Usage](#usage)
- ###[License](#license)
- ###[Contributors](#contributors)
- ###[Questions](#questions)

## Description
This readme is used to explain how to create a database for employee information to include the departments were they work, their role and salary information and the manager they work for.

## Installation
To view the database, you will first need to log into Postgres and create it. To log in, you will need to open the terminal and use the syntax "psql -U postgres". Once you have logged in, you will need to create the database by to creating SQLs. Once you create the SQLs, you will need to create the tables for the items you want to view in one of the SQLs. I chose schema.sql as the name of that SQL. The tables that are created are for department, role, and employee. 

For the department role, you will need the s column for id number and the name of the department. For the role table, you will need a colum for the id, title of the role, department that the role is attached to, and the salary for that role. For the employee table, you will need a column for the id, the first name of the employee, the last name of the employee, the role id, and the manager id. 

Once those are created, you will need to create the information for those columns used in the tables. I name the SQL I will use seeds.sql. For the department table, you will put in the names of the departments you are looking for. For the role table, you will need to put in the title of the role, the id number of the department and the salary of the role. For the employee table, you will need the information for the first and last name of the employee, the id of the role that is attached to the employee and the id of the manager that is attached to the employee. 

Once you have all of that information, you will need to create the database tables. You will do so by opening the terminal and using the syntax "\i schema.sql" to cereate the tables, and "\i seeds.sql" to add the information to the tables. Once you have created and added your information to the tables use the syntax "\q" to log out of Postgres.

After creating your tables, you will need to create and update you js files, ts files, and install the package.jsons by using the syntax "npm install in the terminal. After you have installed and updated the information, you will use the foloowing syntax in the terminal "npm build" to build it. After you build it, use the syntax "npm run start" to start the database.

## Usage
This project is used to create a database with information about the employees and options to change and add information to the database. 

## License
This project is licensed under the MIT license.

## Contributors
Jermaine Strand

## Questions
For any questions, please contact me at: jermaine.strand@yahoo.com.
Github Profile: https://github.com/jaystrand/personnel-tracker