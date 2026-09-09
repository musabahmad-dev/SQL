# Write your MySQL query statement below
-- Show the project ID
SELECT
    p.project_id,

    -- Calculate average experience and round to 2 decimal places
    ROUND(
        AVG(e.experience_years),
        2
    ) AS average_years

-- Read data from Project table
FROM Project p

-- Match employees with their experience
INNER JOIN Employee e

-- Same employee in both tables
ON p.employee_id = e.employee_id

-- One result for each project
GROUP BY p.project_id;