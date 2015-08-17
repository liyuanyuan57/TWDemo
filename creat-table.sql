USE TWDemo;

CREATE TABLE students(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name  VARCHAR(255) NOT NULL,
  studentNumber INT NOT NULL,
  sex VARCHAR(10)
 );

CREATE TABLE course(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  courseName  VARCHAR(255) NOT NULL
  );

CREATE TABLE schedule(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT
  );

CREATE TABLE class(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  classNumber INT NOT NULL
  );

CREATE TABLE student_course(
  studentId INT NOT NULL,
  courseId INT NOT NULL,
  PRIMARY KEY(studentId, courseId)
  );

CREATE TABLE schedule_course
(
  scheduleId INT NOT NULL,
  courseId INT NOT NULL,
  PRIMARY KEY(scheduleId, courseId)
);
