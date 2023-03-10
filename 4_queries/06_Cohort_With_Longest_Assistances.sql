-- Cohort With Longest Assistances
-- Instruction
-- Get the cohort with the longest average duration of assistance requests.

-- The same requirements as the previous query, but only return the single row with the longest average.
-- Expected Result:

--  name  | average_assistance_time 
-- -------+-------------------------
--  MAR12 | 00:15:44.556041
-- (1 row)


SELECT cohorts.name as name ,  avg(completed_at-started_at) as average_assistance_request_duration
FROM assistance_requests
JOIN students on assistance_requests.student_id = students.id
JOIN cohorts on students.cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY average_assistance_request_duration DESC
LIMIT 1;
