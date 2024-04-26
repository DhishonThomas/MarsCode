Scalar functions in SQL are functions that operate on a single value and return a single value.
Unlike aggregate functions, which operate on a set of values and return a single summary value, 
scalar functions perform operations on individual rows, expressions, or values within a query.

Here are some common scalar functions in SQL:

**********/**********/**********/**********/**********/**********/**********/**********/**********/**********/

UCASE() / UPPER(): Converts a string to uppercase.

SELECT UCASE(column_name) FROM table_name;

**********/**********/**********/**********/**********/**********/**********/**********/**********/**********/

LCASE() / LOWER(): Converts a string to lowercase.

SELECT LCASE(column_name) FROM table_name;

**********/**********/**********/**********/**********/**********/**********/**********/**********/**********/

LENGTH(): Returns the length of a string.

SELECT LENGTH(column_name) FROM table_name;

**********/**********/**********/**********/**********/**********/**********/**********/**********/**********/

CONCAT(): Concatenates two or more strings.

SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM employees;

**********/**********/**********/**********/**********/**********/**********/**********/**********/**********/

SUBSTRING(): Extracts a substring from a string.

SELECT SUBSTRING(column_name, start_position, length) FROM table_name;

**********/**********/**********/**********/**********/**********/**********/**********/**********/**********/

ROUND(): Rounds a numeric value to a specified number of decimal places.

SELECT ROUND(column_name, decimals) FROM table_name;

**********/**********/**********/**********/**********/**********/**********/**********/**********/**********/

Examples:
Lets use a simple example with a table named employees:

**********/**********/**********/**********/**********/**********/**********/**********/**********/**********/

employee_id	first_name	last_name	salary
1	        John	    Doe	        50000
2	        Jane	    Smith	    60000
3	        Alice	    Johnson 	55000

**********/**********/**********/**********/**********/**********/**********/**********/**********/**********/

UCASE() / UPPER(): Convert the first names to uppercase.

SELECT UCASE(first_name) FROM employees;

**********/**********/**********/**********/**********/**********/**********/**********/**********/**********/

LCASE() / LOWER(): Convert the last names to lowercase.

SELECT LCASE(last_name) FROM employees; 

**********/**********/**********/**********/**********/**********/**********/**********/**********/**********/

LENGTH(): Get the length of the first names.

SELECT LENGTH(first_name) FROM employees;

**********/**********/**********/**********/**********/**********/**********/**********/**********/**********/

CONCAT(): Create full names by concatenating first and last names.

SELECT CONCAT(first_name,' ',last_name) AS full_name FROM employees;

**********/**********/**********/**********/**********/**********/**********/**********/**********/**********/

ROUND(): Round the salaries to the nearest thousand.

SELECT ROUND(salary,2) AS rounded_salary FROM employees;

**********/**********/**********/**********/**********/**********/**********/**********/**********/**********/
