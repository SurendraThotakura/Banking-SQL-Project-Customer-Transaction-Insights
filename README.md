# Banking-SQL-Project-Customer-Transaction-Insights
Title: High-Value Customers and Their Monthly Average Transactions
Scenario:
You work as a data analyst at a bank. The business team wants to identify high-value customers — customers who have made more than 5 transactions in a month and have an average monthly transaction amount above $5,000.

My task is to:
Show the customer_id, full_name, the month (in YYYY-MM format), and their avg_transaction_amount.
Only include those customers who meet both criteria in at least one month.
Sort the result by avg_transaction_amount descending.

Sample Tables:
customers
| customer_id | first_name | last_name |
| ------------ | ----------- | ---------- |
| 1            | Alice       | Johnson    |
| 2            | Bob         | Smith      |
| 3            | Clara       | Davis      |

transactions
| transaction_id | customer_id | amount  | transaction_date |
| --------------- | ------------ | ------- | ----------------- |
| 101             | 1            | 1200.00 | 2024-06-05        |
| 102             | 1            | 5800.00 | 2024-06-12        |
| 103             | 1            | 6500.00 | 2024-06-20        |
| 104             | 1            | 7200.00 | 2024-06-25        |
| 105             | 1            | 8000.00 | 2024-06-28        |
| 106             | 1            | 9000.00 | 2024-06-30        |
| 107             | 2            | 2000.00 | 2024-06-10        |
