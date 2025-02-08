-- Create a database named 'CompanyDB' and 'Retail'
CREATE DATABASE CompanyDB;
CREATE DATABASE Retail;


-- Show all databases
SHOW DATABASES;


-- Drop database
DROP DATABASE Retail;


-- Show all databases again
SHOW DATABASES;


-- Use the 'CompanyDB' database
USE CompanyDB;


-- Show current selected database
SELECT DATABASE();


-- Create the 'Employees' table with auto-incrementing empId starting from 101
CREATE TABLE Employees (
    empId INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    department VARCHAR(255),
    salary INT,
    startDate DATE
) AUTO_INCREMENT = 101;


-- Create the 'Projects' table with a foreign key to 'Employees'
CREATE TABLE Projects (
    projectId INT AUTO_INCREMENT,
    projectName VARCHAR(255),
    employeeId INT,
    startDate DATE,
    endDate DATE,
    PRIMARY KEY (projectId),
    FOREIGN KEY (employeeId) REFERENCES Employees(empId)
);


-- Insert some data into 'Employees' table
INSERT INTO Employees (name, department, salary, startDate)
VALUES
    ('John Doe', 'IT', 50000, '2023-01-15'),
    ('Jane Smith', 'HR', 45000, '2022-12-20'),
    ('David Lee', 'IT', 60000, '2024-03-05');


-- Insert some data into 'Projects' table with some NULL values
INSERT INTO Projects (projectName, employeeId, startDate)
VALUES
    ('Project A', 101, '2024-05-01'),
    ('Project B', 102, '2024-04-10'),
    (NULL, NULL, 'curdate()+15');  -- new employee yet to join in 15 days


-- - Show all constraints in 'Projects' table (in 'CompanyDB')
select table_name, constraint_type
from information_schema.table_constraints
where table_name = 'Projects';


-- Show all constraints in a table ( with indexes)
SHOW INDEXES FROM Employees;


-- Delete a row from 'Employees' table
DELETE FROM Employees WHERE empId = 1;


-- Truncate the 'Projects' table 
TRUNCATE TABLE Projects;


