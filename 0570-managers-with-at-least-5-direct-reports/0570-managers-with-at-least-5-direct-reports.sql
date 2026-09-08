# Write your MySQL query statement below
-- Show manager's name
SELECT e1.name

-- Manager table
FROM Employee e1

-- Employee table
JOIN Employee e2

-- Match manager ID with employee's managerId
ON e1.id = e2.managerId

-- Group rows by manager
GROUP BY
e1.id,
e1.name

-- Keep managers with at least 5 employees
HAVING COUNT(*) >= 5;