SELECT class_name, COUNT(class_id) FROM Students,Class
WHERE Students.class_id = Class.id
GROUP BY class_id;
