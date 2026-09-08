# Write your MySQL query statement below
-- Customer ID
-- Number of visits
SELECT v.customer_id,
       COUNT(*) AS count_no_trans

-- Visits table
FROM Visits v

-- Match transactions
LEFT JOIN Transactions t
ON v.visit_id = t.visit_id

-- No matching transaction
WHERE t.transaction_id IS NULL

-- Count visits
GROUP BY v.customer_id;