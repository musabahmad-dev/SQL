# Write your MySQL query statement below
-- Show student ID
SELECT
    s.student_id,

    -- Show student name
    s.student_name,

    -- Show subject name
    sub.subject_name,

    -- Count how many matching exam records exist
    COUNT(e.subject_name) AS attended_exams

-- Start from Students table
FROM Students s

-- Pair every student with every subject
CROSS JOIN Subjects sub

-- Keep every student-subject pair
-- Match exam records if they exist
LEFT JOIN Examinations e

-- Student IDs must match
ON s.student_id = e.student_id

-- Subject names must also match
AND sub.subject_name = e.subject_name

-- One result for each student and subject
GROUP BY
s.student_id,
s.student_name,
sub.subject_name

-- Sort as required
ORDER BY
s.student_id,
sub.subject_name;