CREATE VIEW schedule AS select a.name,a.sex ,b.course_name
FROM Students a,Course b,student_course c
WHERE c.student_id = a.id AND c.course_id = b.id
ORDER BY a.id;
