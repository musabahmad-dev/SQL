# Write your MySQL query statement below
-- Show each query name
SELECT
    query_name,

    -- Calculate average query quality
    ROUND(
        AVG(rating / position),
        2
    ) AS quality,

    -- Calculate percentage of poor queries
    ROUND(
        AVG(

            CASE

                -- Poor query
                WHEN rating < 3
                THEN 1

                -- Good query
                ELSE 0

            END

        ) * 100,

        2

    ) AS poor_query_percentage

-- Read data
FROM Queries

-- One result for each query
GROUP BY query_name;