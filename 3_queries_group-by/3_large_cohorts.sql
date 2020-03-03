-- Get all cohorts with 18 or more students.
SELECT cohorts.name AS cohort_name, COUNT(students.id) AS student_count
FROM students 
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohort_name
HAVING COUNT(students.id) >= 18
ORDER BY student_count;