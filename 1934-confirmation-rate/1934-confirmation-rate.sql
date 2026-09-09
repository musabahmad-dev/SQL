# Write your MySQL query statement below
-- Show every user's ID
SELECT
    s.user_id,

    -- Calculate confirmation rate and round to 2 decimal places
    ROUND(
        AVG(
            CASE

                -- If the action is confirmed, treat it as 1
                WHEN c.action = 'confirmed'
                THEN 1

                -- Otherwise treat it as 0
                ELSE 0

            END
        ),
        2
    ) AS confirmation_rate

-- Read data from the Signups table
FROM Signups s

-- Keep every signed-up user
LEFT JOIN Confirmations c

-- Match confirmation records using user_id
ON s.user_id = c.user_id

-- One result per user
GROUP BY s.user_id;