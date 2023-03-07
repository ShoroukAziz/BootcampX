SELECT count(students.*) , cohorts.name
FROM students JOIN cohorts
ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING count(students.*) >= 18
ORDER BY count(students.*);