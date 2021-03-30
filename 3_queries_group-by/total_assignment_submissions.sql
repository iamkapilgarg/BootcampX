SELECT cohorts.name , COUNT(assignment_submissions.*) as total_submissions
from assignment_submissions 
join students
on assignment_submissions.student_id = students.id
join cohorts
on students.cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;