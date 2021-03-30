SELECT cohorts.name, count(*)
FROM students 
JOIN cohorts
on students.cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING count(*) >= 18
ORDER BY count(*);