ALTER TABLE Students DROP FOREIGN KEY fk_ClaStudents;

ALTER TABLE Students DROP FOREIGN KEY fk_ScheStudents;

ALTER TABLE Schedule DROP FOREIGN KEY fk_StuSchedule;

ALTER TABLE student_course DROP FOREIGN KEY fk_UnitStuCou;

ALTER TABLE student_course DROP FOREIGN KEY fk_UnitCouStu;

ALTER TABLE schedule_course DROP FOREIGN KEY fk_UnitSchCou;

ALTER TABLE schedule_course DROP FOREIGN KEY fk_UnitCouSch;


DROP TABLE student_course;

DROP TABLE schedule_course;

DROP TABLE Students;

DROP TABLE Course;

DROP TABLE Schedule;

DROP TABLE Class;

USE mysql;

DROP DATABASE TWDemo;
