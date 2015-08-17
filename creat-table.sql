USE TWDemo;


CREATE TABLE Course(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  course_name  VARCHAR(50) NOT NULL
  );

CREATE TABLE Schedule(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  student_id  INT NOT NULL
  );

CREATE TABLE Class(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  class_number INT NOT NULL
  );

CREATE TABLE Students(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  student_number INT NOT NULL,
  class_id INT NOT NULL,
  schedule_id INT NOT NULL,
  sex VARCHAR(10)
 );

CREATE TABLE student_course(
  student_id INT NOT NULL,
  course_id INT NOT NULL,
  PRIMARY KEY(student_id, course_id)
  );

CREATE TABLE schedule_course
(
  schedule_id INT NOT NULL,
  course_id INT NOT NULL,
  PRIMARY KEY(schedule_id, course_id)
);

ALTER TABLE Students ADD CONSTRAINT fk_ClaStudents FOREIGN KEY (class_id) REFERENCES Class(id);
ALTER TABLE Students ADD CONSTRAINT fk_ScheStudents FOREIGN KEY (schedule_id) REFERENCES Schedule(id);
ALTER TABLE Schedule ADD CONSTRAINT fk_StuSchedule FOREIGN KEY (student_id) REFERENCES Students(id);
ALTER TABLE student_course ADD CONSTRAINT fk_UnitStuCou FOREIGN KEY (student_id) REFERENCES Students(id);
ALTER TABLE student_course ADD CONSTRAINT fk_UnitCouStu FOREIGN KEY (course_id) REFERENCES Course(id);
ALTER TABLE schedule_course ADD CONSTRAINT fk_UnitSchCou FOREIGN KEY (schedule_id) REFERENCES Schedule(id);
ALTER TABLE schedule_course ADD CONSTRAINT fk_UnitCouSch FOREIGN KEY (course_id) REFERENCES Course(id);
