# Write your MySQL query statement below
-- Today's record ID
SELECT w1.id

-- Compare same table
FROM Weather w1

-- Join previous day's record
JOIN Weather w2
ON DATEDIFF(w1.recordDate, w2.recordDate) = 1

-- Today's temperature is higher
WHERE w1.temperature > w2.temperature;