database name is 'mars'

Employees

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100),
    DepartmentID INT
);

INSERT INTO Employees (EmployeeID, Name, DepartmentID) VALUES 
(1, 'John', 1),
(2, 'Alice', 2),
(3, 'Bob', 1),
(4, 'Jane', 3);
Departments

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

INSERT INTO Departments (DepartmentID, DepartmentName) VALUES 
(1, 'Engineering'),
(2, 'Marketing'),
(3, 'Finance');

INNER JOIN:


SELECT Employees.Name, Departments.DepartmentName
FROM Employees
INNER JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;

LEFT JOIN:

SELECT Employees.Name, Departments.DepartmentName
FROM Employees
LEFT JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;


RIGHT JOIN:

SELECT Employees.Name, Departments.DepartmentName
FROM Employees
RIGHT JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;


FULL OUTER JOIN:

SELECT Employees.Name, Departments.DepartmentName
FROM Employees
FULL OUTER JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;


**********/**********/**********/**********/**********/**********/**********/**********/**********/**********/
Lets break down the differences between the four main types of SQL joins: INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL OUTER JOIN.

**********/**********/**********/**********/**********/**********/**********/**********/**********/**********/
### INNER JOIN:
- **What it does**: Returns only the rows where there is a match in both tables based on the join condition.
- **When to use it**: When you want to retrieve only the rows that have matching values in both tables.
- **Example**: If you have a list of employees and their departments, and you want to see only the employees who are currently assigned to a department.

**********/**********/**********/**********/**********/**********/**********/**********/**********/**********/
### LEFT JOIN:
- **What it does**: Returns all the rows from the left table and the matching rows from the right table, with NULL values in the columns from the right table if there is no match.
- **When to use it**: When you want to retrieve all the rows from the left table and include matching rows from the right table, even if there are no matches.
- **Example**: If you have a list of all employees and their departments, and you want to see all employees, even those who are not currently assigned to a department.

**********/**********/**********/**********/**********/**********/**********/**********/**********/**********/
### RIGHT JOIN:
- **What it does**: Returns all the rows from the right table and the matching rows from the left table, with NULL values in the columns from the left table if there is no match.
- **When to use it**: When you want to retrieve all the rows from the right table and include matching rows from the left table, even if there are no matches.
- **Example**: If you have a list of all departments and the employees assigned to each department, and you want to see all departments, even those without any employees.

**********/**********/**********/**********/**********/**********/**********/**********/**********/**********/
### FULL OUTER JOIN:
- **What it does**: Returns all the rows from both tables, matching them where possible and including NULL values where there are no matches.
- **When to use it**: When you want to retrieve all the rows from both tables, regardless of whether there are matches or not.
- **Example**: If you want to see a complete list of all employees and all departments, including those without any matches in the other table.

In summary, the main differences between these joins lie in which rows they include and how they handle unmatched rows from each table. 
Depending on your specific requirements, you would choose the appropriate type of join to retrieve the desired results.
**********/**********/**********/**********/**********/**********/**********/**********/**********/**********/