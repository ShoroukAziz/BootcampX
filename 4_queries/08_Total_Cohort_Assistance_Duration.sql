-- Total Cohort Assistance Duration
-- We need to be able to see the total amount of time being spent on an
-- assistance request for each cohort.
-- This number will tell use how much time is being spent on assistance requests for each cohort.

-- Instruction
-- Get the total duration of all assistance requests for each cohort.

-- Select the cohort's name and the total duration the assistance requests.
-- Order by total_duration.
-- Look at the ERD to see how to join the tables.
-- Expected Result:

--  cohort | total_duration 
-- --------+----------------
--  JUL30  | 390:35:20
--  AUG27  | 398:19:00
--  JUL02  | 453:50:30
--  NOV19  | 462:34:40
--  MAY07  | 480:10:55
--  ...
--  (11 rows)

SELECT cohorts.name as name,  sum(completed_at-started_at) as total_duration 
FROM assistance_requests
JOIN students on assistance_requests.student_id = students.id
JOIN cohorts on students.cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY  total_duration;