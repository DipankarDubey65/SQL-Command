# Create Viwe table this is the vertual table

create table Original_table(
roll_no int primary key,
name varchar(50),
marks int,
grade varchar(2),
city varchar(50)
);

insert into Original_table(roll_no,name,marks,grade,city) 
values
(101,"Anil",78,"C","Pune"),
(102,"Sakshi",93,"A","Mumbai"),
(103,"Dipankar",85,"B","Mumbai"),
(104,"Chetan",96,"A","Delhi"),
(105,"Nikhil",12,"F","Delhi"),
(106,"Kushagra",82,"B","Delhi");


-- this crate virtual table
create view teacher as select  roll_no, marks, grade from Original_table;
select * from teacher;


drop view teacher
