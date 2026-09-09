# Write your MySQL query statement below
-- Find the first login date for every player
WITH FirstLogin AS (

    SELECT

        player_id,

        MIN(event_date) AS first_login

    FROM Activity

    GROUP BY player_id

)

-- Calculate the fraction of players
SELECT

    ROUND(

        COUNT(a.player_id)

        /

        (SELECT COUNT(*) FROM FirstLogin),

        2

    ) AS fraction

FROM FirstLogin f

-- Match players with their activity
JOIN Activity a

ON f.player_id = a.player_id

-- Check if they logged in the next day
AND a.event_date = DATE_ADD(f.first_login, INTERVAL 1 DAY);
