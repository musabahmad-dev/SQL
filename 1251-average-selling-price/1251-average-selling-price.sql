-- Show the product ID
SELECT
    p.product_id,

    -- If no units were sold, return 0
    IFNULL(

        -- Calculate weighted average price
        ROUND(
            SUM(p.price * u.units) / SUM(u.units),
            2
        ),

        -- Replace NULL with 0
        0

    ) AS average_price

-- Read from Prices table
FROM Prices p

-- Keep all products
LEFT JOIN UnitsSold u

-- Match same product
ON p.product_id = u.product_id

-- Match the correct price period
AND u.purchase_date BETWEEN p.start_date AND p.end_date

-- One result per product
GROUP BY p.product_id;