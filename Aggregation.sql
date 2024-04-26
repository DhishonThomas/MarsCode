Aggregate functions in SQL are functions that operate on a set of values and return a single value summarizing that set.
These functions are commonly used to perform calculations on groups of rows and are often used in conjunction with the GROUP BY clause to group rows based on certain criteria.

Here are some common aggregate functions in SQL:

**********/**********/**********/**********/**********/**********/**********/**********/**********/**********/
COUNT(): Returns the number of rows in a group.

SELECT COUNT(*) FROM table_name;

**********/**********/**********/**********/**********/**********/**********/**********/**********/**********/
SUM(): Returns the sum of values in a numeric column.

SELECT SUM(column_name) FROM table_name;

**********/**********/**********/**********/**********/**********/**********/**********/**********/**********/
AVG(): Returns the average value of a numeric column.

SELECT AVG(column_name) FROM table_name;

**********/**********/**********/**********/**********/**********/**********/**********/**********/**********/
MIN(): Returns the minimum value in a column.

SELECT MIN(column_name) FROM table_name;

**********/**********/**********/**********/**********/**********/**********/**********/**********/**********/
MAX(): Returns the maximum value in a column.

SELECT MAX(column_name) FROM table_name;

**********/**********/**********/**********/**********/**********/**********/**********/**********/**********/
Example::/

Lets use a simple example with a table named sales:

sale_id	product	quantity	price
1	    Apple	    5	    1.50
2	    Banana	    3	    0.75
3	    Orange	    4       1.20
4	    Apple	    6	    1.50
5	    Banana	    2	    0.75

**********/**********/**********/**********/**********/**********/**********/**********/**********/**********/
COUNT(): Count the total number of sales.

SELECT COUNT(*) AS total_sales FROM slaes;

**********/**********/**********/**********/**********/**********/**********/**********/**********/**********/
SUM(): Calculate the total revenue.

SELECT SUM(quantity*price) AS total_revenue FROM slaes;

**********/**********/**********/**********/**********/**********/**********/**********/**********/**********/
AVG(): Calculate the average price per sale.

SELECT AVG(price) AS average_price FROM sales;

**********/**********/**********/**********/**********/**********/**********/**********/**********/**********/
MIN(): Find the lowest quantity sold.

SELECT MIN(quantity) AS min_price FROM sales;

**********/**********/**********/**********/**********/**********/**********/**********/**********/**********/
MAX(): Find the highest price.

SELECT MAX(price) AS max_price FROM sales;