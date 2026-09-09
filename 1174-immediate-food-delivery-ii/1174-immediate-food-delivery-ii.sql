# Write your MySQL query statement below
-- Calculate percentage of customers whose first order was immediate
SELECT

    ROUND(

        AVG(

            CASE

                -- Immediate order
                WHEN d.order_date = d.customer_pref_delivery_date

                THEN 1

                -- Scheduled order
                ELSE 0

            END

        ) * 100,

        2

    ) AS immediate_percentage

-- Read Delivery table
FROM Delivery d

-- Keep only the first order of each customer
WHERE

(d.customer_id,d.order_date)

IN

(

SELECT

customer_id,

MIN(order_date)

FROM Delivery

GROUP BY customer_id

);