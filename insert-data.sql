delimiter //
create procedure course()
begin
declare num int;
set num=1;
while num <= 20 do
INSERT INTO  Course(course_name) values(concat("course", num));
set num=num+1;
end while;
end
 //

 call course();
