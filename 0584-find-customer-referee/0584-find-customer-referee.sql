# Write your MySQL query statement below
-- Select customer names
SELECT name

-- From Customer table
FROM Customer

-- Keep customers whose referee isn't 2
-- Also include NULL values
WHERE referee_id != 2
OR referee_id IS NULL;