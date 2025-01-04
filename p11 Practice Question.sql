# Practice Question 
-- Question in student table
select * from student;


# Q1. Change the name of column "name" to "Full_name".
alter table student change  name Full_name varchar(50);
select * from student;

# Q2. Delete all the student who scored marks less than 90.
delete from student where marks<90;
  select * from student;
  
# Q3. Delete the  column for grade
alter table student drop column grade;  
  select * from student;