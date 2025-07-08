SELECT s.name AS student_name, c.title AS course_title
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id;

SELECT c.title AS course_title, COUNT(e.student_id) AS total_enrolled
FROM courses c
LEFT JOIN enrollments e ON c.course_id = e.course_id
GROUP BY c.title;

SELECT c.title, AVG(
  CASE grade
    WHEN 'A' THEN 4
    WHEN 'B' THEN 3
    WHEN 'C' THEN 2
    WHEN 'D' THEN 1
    WHEN 'F' THEN 0
    ELSE NULL
  END
) AS avg_grade_points
FROM courses c
JOIN enrollments e ON c.course_id = e.course_id
GROUP BY c.title;

SELECT i.name AS instructor, COUNT(c.course_id) AS courses_taught
FROM instructors i
LEFT JOIN courses c ON i.instructor_id = c.instructor_id
GROUP BY i.name;

SELECT name
FROM students
WHERE student_id NOT IN (
  SELECT student_id FROM enrollments
);

SELECT c.title AS course_title, d.name AS department_name
FROM courses c
JOIN departments d ON c.dept_id = d.dept_id;

SELECT DISTINCT s.name
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id
JOIN departments d ON c.dept_id = d.dept_id
WHERE d.name = 'Mathematics';

SELECT s.name, COUNT(e.course_id) AS courses_taken
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
GROUP BY s.name
ORDER BY courses_taken DESC
LIMIT 3;

SELECT c.title
FROM courses c
JOIN enrollments e ON c.course_id = e.course_id
GROUP BY c.title
HAVING COUNT(e.student_id) >= 2;

SELECT i.name AS instructor
FROM instructors i
JOIN courses c ON i.instructor_id = c.instructor_id
LEFT JOIN enrollments e ON c.course_id = e.course_id
WHERE e.enrollment_id IS NULL;
