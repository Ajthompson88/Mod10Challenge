-- Create a table named 'department' to store department information
CREATE TABLE department (
id SERIAL PRIMARY KEY,  -- 'id' is a unique identifier for each department, automatically incremented
name VARCHAR(30) UNIQUE NOT NULL  -- 'name' is the name of the department, must be unique and cannot be null
);

-- Create a table named 'role' to store job roles information
CREATE TABLE role (
id SERIAL PRIMARY KEY,  -- 'id' is a unique identifier for each role, automatically incremented
title VARCHAR(30) UNIQUE NOT NULL,  -- 'title' is the name of the role, must be unique and cannot be null
salary DECIMAL NOT NULL,  -- 'salary' is the salary for the role, must be a decimal number and cannot be null
department_id INT NOT NULL,  -- 'department_id' is a reference to the 'id' in the 'department' table, cannot be null
FOREIGN KEY (department_id) REFERENCES department(id)  -- Establishes a foreign key relationship with the 'department' table
);

-- Create a table named 'employee' to store employee information
CREATE TABLE employee (

id SERIAL PRIMARY KEY,  -- 'id' is a unique identifier for each employee, automatically incremented
first_name VARCHAR(30) NOT NULL,  -- 'first_name' is the first name of the employee, cannot be null
last_name VARCHAR(30) NOT NULL,  -- 'last_name' is the last name of the employee, cannot be null
role_id INT,  -- 'role_id' is a reference to the 'id' in the 'role' table
manager_id INT,  -- 'manager_id' is a reference to the 'id' of another employee who is the manager
FOREIGN KEY (role_id) REFERENCES role(id),  -- Establishes a foreign key relationship with the 'role' table
FOREIGN KEY (manager_id) REFERENCES employee(id)  -- Establishes a foreign key relationship with the 'employee' table itself for managers
);