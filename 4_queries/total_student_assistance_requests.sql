SELECT count(assistance_requests.*), students.name
FROM assistance_requests
  JOIN students ON assistance_requests.student_id = students.id
WHERe students.name = 'Elliot Dickinson'
GROUP BY students.name;