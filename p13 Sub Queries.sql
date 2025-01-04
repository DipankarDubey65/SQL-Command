-- SQL Sub Queries ishe neasted query bhi kahte hai 
create table find_scored(
roll_no int primary key,
name varchar(50),
marks int,
grade varchar(2),
city varchar(50)
);

insert into find_scored(roll_no,name,marks,grade,city) 
values
(101,"Anil",78,"C","Pune"),
(102,"Sakshi",93,"A","Mumbai"),
(103,"Dipankar",85,"B","Mumbai"),
(104,"Chetan",96,"A","Delhi"),
(105,"Nikhil",12,"F","Delhi"),
(106,"Kushagra",82,"B","Delhi");

select * from find_scored;
alter table find_scored  drop column grade;
alter table find_scored drop column city;

update find_scored  set marks =92 where roll_no = 105;

# Q1. Get the names of all students who scored more than class average 
select  name, marks from find_scored 
where marks > (select avg(marks) from find_scored);


# Q2 Find the names of all students with even roll numbers.alter

select roll_no, name from find_scored  where roll_no in (select roll_no from find_scored where (roll_no%2=0));


-- Sub Query use krne ka second method

# Q.3 Find  the max marks from the student of delhi
select max(marks) from
(select * from find_scored where city ="delhi") as temp;

