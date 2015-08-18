SELECT class_name,SUM(sex='female') AS female,SUM(sex='male') AS male FROM Students,Class
WHERE Students.class_id = Class.id
GROUP BY Class.id;
