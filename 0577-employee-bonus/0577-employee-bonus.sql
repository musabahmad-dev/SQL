# Write your MySQL query statement below
-- Show employee name
SELECT e.name,

-- Show employee bonus
       b.bonus

-- Read data from Employee table
FROM Employee e

-- Keep every employee
-- Match bonus using employee ID
LEFT JOIN Bonus b
ON e.empId = b.empId

-- Keep employees whose bonus is less than 1000
-- OR who do not have a bonus
WHERE b.bonus < 1000
OR b.bonus IS NULL;