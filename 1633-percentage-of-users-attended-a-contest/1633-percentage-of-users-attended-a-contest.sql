# Write your MySQL query statement below
-- Show contest ID
SELECT
    contest_id,

    -- Calculate percentage of registered users
    ROUND(

        -- Registered users
        COUNT(DISTINCT user_id)

        *

        100

        /

        -- Total users
        (SELECT COUNT(*) FROM Users),

        2

    ) AS percentage

-- Read registration data
FROM Register

-- One result per contest
GROUP BY contest_id

-- Highest percentage first
-- If equal, smaller contest ID first
ORDER BY
percentage DESC,
contest_id ASC;
