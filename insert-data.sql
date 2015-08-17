
delimiter //
create procedure course()
begin
declare num int;
set num=1;
while num <= 20 do
INSERT INTO  Course(course_name) values(concat("course-", num));
set num=num+1;
end while;
end
//

 call course();//

 delimiter //
 create procedure class()
 begin
 declare num int;
 set num=1;
 while num <= 5 do
 INSERT INTO  Class(class_name) values(concat("class-", num));
 set num=num+1;
 end while;
 end
  //

  call class();//


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

  call students();//
