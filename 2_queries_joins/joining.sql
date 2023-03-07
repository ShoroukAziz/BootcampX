SELECT students.name AS "student name", cohorts.name AS "cohort name" ,students.start_date AS "student start date",  cohorts.start_date AS "cohort start date"
FROM students JOIN cohorts
ON students.cohort_id = cohorts.id
WHERE students.start_date != cohorts.start_date
ORDER BY "cohort start date";