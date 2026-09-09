# Write your MySQL query statement below
-- Show transaction month
SELECT

    DATE_FORMAT(trans_date,'%Y-%m') AS month,

    -- Show country
    country,

    -- Count all transactions
    COUNT(*) AS trans_count,

    -- Count approved transactions
    COUNT(

        CASE

            WHEN state='approved'

            THEN 1

        END

    ) AS approved_count,

    -- Total transaction amount
    SUM(amount) AS trans_total_amount,

    -- Total approved amount
    SUM(

        CASE

            WHEN state='approved'

            THEN amount

            ELSE 0

        END

    ) AS approved_total_amount

-- Read data
FROM Transactions

-- One result per month and country
GROUP BY

DATE_FORMAT(trans_date,'%Y-%m'),

country;