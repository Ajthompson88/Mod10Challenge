-- Insert data into the 'department' table
INSERT INTO department (name) VALUES 
('Engineering'),
('Finance'),
('Human Resources'),
('Marketing');

-- Insert data into the 'role' table
INSERT INTO role (title, salary, department_id) VALUES 
('Software Engineer', 80000, 1),
('Accountant', 60000, 2),
('HR Manager', 75000, 3),
('Marketing Specialist', 70000, 4);

-- Insert data into the 'employee' table
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES 
('John', 'Doe', 1, NULL),  -- John Doe is a Software Engineer with no manager
('Jane', 'Smith', 2, NULL),  -- Jane Smith is an Accountant with no manager
('Emily', 'Jones', 3, NULL),  -- Emily Jones is an HR Manager with no manager
('Michael', 'Brown', 4, NULL),  -- Michael Brown is a Marketing Specialist with no manager
('Sarah', 'Davis', 1, 1),  -- Sarah Davis is a Software Engineer managed by John Doe
('David', 'Wilson', 2, 2),  -- David Wilson is an Accountant managed by Jane Smith
('Laura', 'Taylor', 3, 3),  -- Laura Taylor is an HR Manager managed by Emily Jones
('James', 'Anderson', 4, 4);  -- James Anderson is a Marketing Specialist managed by Michael Brown