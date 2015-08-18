
delimiter //
create procedure course()
begin
declare num int;
set num=1;
while num <= 20 do
INSERT INTO  Course(course_name) values(concat("course-", num));
set num=num+1;
end while;
end //

delimiter ;

 call course();

 delimiter //
 create procedure class()
 begin
 declare num int;
 set num=1;
 while num <= 5 do
INSERT INTO  Class(class_name) values(concat("class-", num));
 set num=num+1;
 end while;
 end //
delimiter ;
call class();


  delimiter //
  create procedure students()
  begin
  declare num int;
  set num=1;
  while num <= 50 do
  if num%2 = 0 then
    INSERT INTO  Students(name,class_id,sex) values(concat("student-", num),num%5+1,"female");
  else
    INSERT INTO  Students(name,class_id,sex) values(concat("student-", num),num%5+1,"male");
  end if;
  set num=num+1;
  end while;
  end
  //
delimiter ;
  call students();


  delimiter //
  create procedure student_course()
  begin
  declare i int;
  declare k int;
  set i=1;
  while i <= 50 do
  set k=1;
  while k <= 5 do
  INSERT INTO  student_course(student_id, course_id) values(i,(i+k-1)%20+1);
  set k=k+1;
  end while;
  set i=i+1;
  end while;
  end //
  delimiter ;
   call student_course();
