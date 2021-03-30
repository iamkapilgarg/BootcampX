select assignments.id, assignments.name, assignments.day, assignments.chapter, count(assistance_requests.*)
from assistance_requests
JOIN assignments on assistance_requests.assignment_id = assignments.id
group by assignments.id
order by count desc;