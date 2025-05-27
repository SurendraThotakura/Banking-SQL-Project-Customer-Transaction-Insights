-- schema.sql
-- Create Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

-- Create Transactions Table
CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10, 2),
    transaction_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Sample Data for Customers
INSERT INTO customers (customer_id, first_name, last_name) VALUES
(1, 'Alice', 'Johnson'),
(2, 'Bob', 'Smith'),
(3, 'Clara', 'Davis');

-- Sample Data for Transactions
INSERT INTO transactions (transaction_id, customer_id, amount, transaction_date) VALUES
(101, 1, 1200.00, '2024-06-05'),
(102, 1, 5800.00, '2024-06-12'),
(103, 1, 6500.00, '2024-06-20'),
(104, 1, 7200.00, '2024-06-25'),
(105, 1, 8000.00, '2024-06-28'),
(106, 1, 9000.00, '2024-06-30'),
(107, 2, 2000.00, '2024-06-10');
