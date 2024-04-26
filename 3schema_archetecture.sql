
-- Table: books
CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(100),
    genre VARCHAR(50),
    publication_year INT
);

-- Table: patrons
CREATE TABLE patrons (
    patron_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone_number VARCHAR(20)
);

-- Table: transactions
CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    book_id INT,
    patron_id INT,
    transaction_date DATE,
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (patron_id) REFERENCES patrons(patron_id)
);


Step 2: Add Sample Data

-- Insert sample data into the books table
INSERT INTO books (book_id, title, author, genre, publication_year)
VALUES
    (1, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', 1960),
    (2, '1984', 'George Orwell', 'Dystopian', 1949),
    (3, 'Pride and Prejudice', 'Jane Austen', 'Romance', 1813);

-- Insert sample data into the patrons table
INSERT INTO patrons (patron_id, name, email, phone_number)
VALUES
    (1, 'Alice Smith', 'alice@example.com', '123-456-7890'),
    (2, 'Bob Johnson', 'bob@example.com', '456-789-0123'),
    (3, 'Charlie Brown', 'charlie@example.com', '789-012-3456');

-- Insert sample data into the transactions table
INSERT INTO transactions (transaction_id, book_id, patron_id, transaction_date)
VALUES
    (1, 1, 1, '2022-01-15'),
    (2, 2, 2, '2022-02-20'),
    (3, 3, 3, '2022-03-25');





Schema architecture refers to the organization and structure of database objects such as tables, views, indexes, and relationships within a database. It defines how data is stored, organized, and accessed in a database system. Let's illustrate schema architecture with an example using SQL code.

Consider a simple scenario where we have a database for managing a library's collection of books and patrons. We'll design a schema for this database, including tables for books, patrons, and transactions.
### Explanation:

- **Books Table**: Contains information about books such as their ID, title, author, genre, and publication year.
- **Patrons Table**: Stores information about library patrons including their ID, name, email, and phone number.
- **Transactions Table**: Records transactions where patrons borrow books from the library. It includes the transaction ID, book ID, patron ID, and transaction date. Foreign key constraints ensure that book IDs and patron IDs in transactions refer to valid entries in the books and patrons tables, respectively.

### Code Explanation:

- We define the schema architecture by creating three tables: books, patrons, and transactions.
- Each table has columns representing different attributes of the corresponding entity.
- Primary keys (`book_id`, `patron_id`, `transaction_id`) uniquely identify each record in their respective tables.
- Foreign key constraints ensure data integrity by enforcing referential integrity between related tables.
- We insert sample data into the tables to demonstrate how the schema works in practice.

This example illustrates a simple schema architecture for a library management system. In a real-world scenario, the schema may include additional tables, indexes, and constraints based on specific requirements.