USE TWDemo//


CREATE TABLE Course(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  course_name  VARCHAR(50) NOT NULL
  );

CREATE TABLE Class(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  class_name VARCHAR(50) NOT NULL
  );

CREATE TABLE Students(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  class_id INT NOT NULL,
  sex ENUM('female','male') NOT NULL
 );

CREATE TABLE student_course(
  student_id INT NOT NULL,
  course_id INT NOT NULL,
  PRIMARY KEY(student_id, course_id)
  );

ALTER TABLE Students ADD CONSTRAINT fk_ClaStudents FOREIGN KEY (class_id) REFERENCES Class(id);
ALTER TABLE student_course ADD CONSTRAINT fk_UnitStuCou FOREIGN KEY (student_id) REFERENCES Students(id);
ALTER TABLE student_course ADD CONSTRAINT fk_UnitCouStu FOREIGN KEY (course_id) REFERENCES Course(id);
