SELECT a.id, a.name,a.sex ,b.course_name
FROM Students a,Course b,student_course c
WHERE c.student_id = a.id AND c.course_id = b.id AND (a.id BETWEEN 20 AND 30);
