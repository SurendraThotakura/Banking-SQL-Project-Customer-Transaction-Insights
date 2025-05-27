-- high_value_customers.sql
SELECT 
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS full_name,
    TO_CHAR(t.transaction_date, 'YYYY-MM') AS month,
    ROUND(AVG(t.amount), 2) AS avg_transaction_amount
FROM customers c
JOIN transactions t ON c.customer_id = t.customer_id
GROUP BY c.customer_id, full_name, TO_CHAR(t.transaction_date, 'YYYY-MM')
HAVING 
    COUNT(t.transaction_id) > 5 AND
    AVG(t.amount) > 5000
ORDER BY avg_transaction_amount DESC;
