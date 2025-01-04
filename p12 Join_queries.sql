# join  keyword ka  use hame do table ko combine krke information find krte hai


create table table1(
student_id int primary  key,
name varchar(50)
);

insert into table1 values(101,"Dipankar"),(102,"Nikhil"),(103,"Kushagra");

create table table2(
student_id int,
course varchar(50)
);
insert into table2 values(102,"English"),(105,"Math"),(103,"Science"),(107,"Computer science");

-- inner join aisa data return hoga jo dono table me common ho
select * from table1 inner join table2 on table1.student_id = table2.student_id;
 
select table1.student_id, name,course from table1 inner join table2 on table1.student_id = table2.student_id;

select * from table1;

-- left join keyword  left table ka whole data and right table se common data return krta hai
select * from table1 left join table2 on table1.student_id = table2.student_id;

select name,course from table1 left join table2 on table1.student_id = table2.student_id; 

-- right join right table ka whole data and left table se commmon data
select * from table1 right join  table2 on table1.student_id = table2.student_id;

select table2.student_id, course,name from table1 right join table2 on table1.student_id = table2.student_id;


-- full join using union yah left ka data right ka data and common data
select * from table1 left join table2 on table1.student_id = table2.student_id
union
select * from table1 right join table2 on table1.student_id = table2.student_id; 


-- exclusive  left join  yh only wh data return krta hai jisme left table kata data hota but jo dono table me commun hota hai use nhi show krta 
 select * from table1 left join  table2 on table1.student_id = table2.student_id
 where table2.student_id is null;
 
 
-- exclusive  right join  yh only wh data return krta hai jisme right table ka  data hota but jo dono table me commun hota hai use nhi show krta
select * from table1 right join table2 on table1.student_id = table2.student_id where table1.student_id is null;


-- Full exclusive join
select * from table1 left join table2 on table1.student_id = table2.student_id where table2.student_id is null
union
select * from table1 right join table2 on table1.student_id = table2.student_id where table1.student_id is null;


create table Self_join(
id int primary key,
name varchar(50),
manager_id int
);

insert into Self_join values(101,"Shivam",103),(102,"Aman",104),(103,"Nikhil",null),(104,"Kartik",103);
select * from Self_join;

-- self join jab hme ek hi table me work krna ho
 select * from Self_join as s join self_join as t on s.id = t.manager_id;

select s.name,t.name as Manager from Self_join as s join self_join as t on s.id = t.manager_id;


-- union keyword yh do table ka combination return krta hai lekin duplicate remove krke

select * from table1
union
select * from table2;


-- union all duplicat ko bhi allow karta hai
select * from table1
union all
select * from table2;