# Write your MySQL query statement below
-- Show every column because the question asks for the complete movie record
SELECT *

-- Read data from the Cinema table
FROM Cinema

-- Keep only movies whose ID is odd
WHERE MOD(id, 2) = 1

-- Also remove movies whose description is 'boring'
AND description <> 'boring'

-- Sort movies from highest rating to lowest
ORDER BY rating DESC;