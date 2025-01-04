-- Create table name student 
create table student(
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20)
); 
-- Enter data into table
insert into student(rollno,name,marks,grade,city) 
values
(101,"Anil",78,"C","Pune"),
(102,"Sakshi",93,"A","Mumbai"),
(103,"Dipankar",85,"B","Mumbai"),
(104,"Chetan",96,"A","Delhi"),
(105,"Nikhil",12,"F","Delhi"),
(106,"Kushagra",82,"B","Delhi");

-- name and marks show from student table.
select name,marks from student;

-- jab hme unique value dekhna hoto ham distinct keyword ka use krte hai
select  distinct name from student;

-- jab hme us student ka marks dekhna hai jinka marks  grater than 80 ho
 select  name, marks  from student where marks>=80;
 
 -- hme un student ka whole data open kro jinka city mumbai ho
 select * from student where city="Mumbai";
 
 -- hme un student ka whole data chahiye jinka marks >80 ho and city mumbai ho
 select * from student where marks>80 and city = "Mumbai";
 
 -- hme un student ka whole data chahiye jinka marks >80 ho ya city delhi ho
 select * from student where marks >80 or city="delhi";
 
 -- hme unka data chahiye jinka marks 80 to 90 ke bich me ho
 select * from student where marks between 80 and 90;
 
 -- hme un student ka data chahiye jinka city delhi ho ya pune
 select * from student where  city in ("delhi","pune");
 
 -- hme un student ka data chahiye jinka city n delhi ho n pune
 select * from student where city not in("delhi","pune");
 
 -- hme bas 3 student ka data chahiye
 select *from student limit 3;
 
 -- hme un 3 student ka data chahiye jinka marks >80
 select *from student where marks>80 limit 3;
 
 -- hme student ka data chaiye but city ke hisab se ascending order me
 select * from student order by city asc;
 
 -- hme student ka data chaiye but marks ke hisab se descending order me
 select * from student order by marks desc limit 3;
 
 -- hme count chahiye ki delhi ke student kitne hai
 select count(city) as delhi_student from student where city = "delhi";
 
 -- hme us student ka hieghest marks chahiye.
 select max(marks) from student;
 -- hme us student ka lowest marks chahiye.
 select min(marks) from student;
 
 -- hme average chahiye whole marks ka
 select avg(marks) from student;
 
 -- Group by clause-->
 -- hme har city ke topper student ka data chahiyre
 select name , max(marks), city from student group by city order by marks desc; 
 
 -- hme city ke base par student ka count chahiye ki kis city se kitne student hai
 select city, count(name) as count_studnet_city_wise from student group by city; 
 
 -- hme city wise marks ka average chahiye
 select city, avg(marks) from student group by city;
  
 
 # HAVING CLAUSE
  -- jab hme group ke base par condition apply krna hoto ham where ki jagah having ka use krte hai
  
 select city, count(rollno) as mark from student group by city having max(marks)>=80 ;
 
 --  hme unka  city chahiye  jiska grade A ho and us city me maximum marks ho grater than >90.
 select city 
 from student 
 where grade = "A"
 group by city
 having max(marks)>=93
 order by city asc;

 

select *from student;