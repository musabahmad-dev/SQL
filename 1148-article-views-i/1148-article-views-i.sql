# Write your MySQL query statement below
-- DISTINCT removes duplicate author IDs
SELECT DISTINCT author_id AS id

-- From Views table
FROM Views

-- Author viewed their own article
WHERE author_id = viewer_id

-- Sort IDs
ORDER BY id;