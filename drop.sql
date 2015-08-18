ALTER TABLE Students DROP FOREIGN KEY fk_ClaStudents;

ALTER TABLE student_course DROP FOREIGN KEY fk_UnitStuCou;

ALTER TABLE student_course DROP FOREIGN KEY fk_UnitCouStu;


DROP TABLE student_course;

DROP TABLE Students;

DROP TABLE Course;

DROP TABLE Class;

USE mysql;

DROP DATABASE TWDemo;
