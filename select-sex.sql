SELECT class_name,SUM(sex='female') as female,SUM(sex='male') as male FROM Students,Class
WHERE Students.class_id = Class.id
GROUP BY Class.id;
