Types of Indexes:
**********/**********/**********/**********/**********/**********/**********/**********/**********/**********/
Single-Column Index: Index created on a single column.

CREATE INDEX index_name ON table_name (column_name);

**********/**********/**********/**********/**********/**********/**********/**********/**********/**********/
Composite Index: Index created on multiple columns.

CREATE INDEX index_name ON table_name (column1, column2);

**********/**********/**********/**********/**********/**********/**********/**********/**********/**********/
Unique Index: Ensures that all values in the indexed column(s) are unique.

CREATE UNIQUE INDEX index_name ON table_name (column_name);

**********/**********/**********/**********/**********/**********/**********/**********/**********/**********/
Primary Key Index: Automatically created when a primary key constraint is defined on a column or columns.
 Ensures uniqueness and provides fast access to rows.

ALTER TABLE table_name ADD PRIMARY KEY (column_name);

**********/**********/**********/**********/**********/**********/**********/**********/**********/**********/
Example:
Lets create an index on the title column of the books table to improve search performance:

CREATE INDEX idx_title ON books (title);
**********/**********/**********/**********/**********/**********/**********/**********/**********/**********/

Indexing is a database optimization technique used to improve the speed and efficiency of data retrieval operations, especially for large datasets. Indexes are data structures that allow the database management system (DBMS) to quickly locate rows in a table based on the values of one or more columns.

How Indexing Works:
Index Creation: An index is created on one or more columns of a table. When an index is created, the DBMS sorts the values of the indexed columns and stores them in a separate data structure called the index.
Index Lookup: When a query includes a condition on the indexed column(s), the DBMS can use the index to quickly locate the rows that match the condition without scanning the entire table. This is similar to looking up a word in a books index to find the pages where the word appears.
Improved Performance: By using indexes, the DBMS can significantly reduce the number of disk I/O operations required to retrieve data, resulting in faster query execution times.

**********/**********/**********/**********/**********/**********/**********/**********/**********/**********/
When to Use Indexes:
Use indexes on columns frequently used in search conditions, join conditions, or order by clauses.
Consider indexing columns with high cardinality (i.e., columns with many distinct values) for better selectivity.
Avoid over-indexing, as indexes consume storage space and may slow down data modification operations (e.g., INSERT, UPDATE, DELETE).





**********/**********/**********/**********/**********/**********/**********/**********/**********/**********/
In summary, indexing is a crucial aspect of database performance optimization, allowing for faster data retrieval operations by providing efficient access paths to the data. However, its essential to carefully plan and evaluate indexing strategies to balance performance gains with potential overhead and storage requirements

