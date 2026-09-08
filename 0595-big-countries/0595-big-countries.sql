# Write your MySQL query statement below
-- Select required columns
SELECT name,
       population,
       area

-- From World table
FROM World

-- Country should satisfy either condition
WHERE area >= 3000000
OR population >= 25000000;