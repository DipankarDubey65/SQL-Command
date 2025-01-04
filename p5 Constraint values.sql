create table constraints(
id int  primary key,
roll_number int unique,
name varchar(10)  not null
);

insert into constraints(id,roll_number,name)values(1,223,"Dipankar");
insert into constraints values(2,233,"Aman");
insert into constraints values(3,223,"Nikhil"); # Error Duplicate entry 223.
insert into constraints values(4,234," ");

select *from constraints;

# jab  hme do columns ka combination karke primary key create krna ho
create table pk_combination(
id int,
name varchar(50),
roll_number int,
primary key(id,name)
);

select *from pk_combination;
insert into pk_combination values(1,"Shivam",2333),(2,"Nikhil",2243),(1,"Aman",2234),(3,"Nikhil",2243);

select *from pk_combination;

# create foreign key use constraints table.
create table foreignkey(
cust_id int primary key,
name varchar(50),
age int default (20),
foreign key (cust_id) references constraints(id) 
); 

select * from foreignkey;


insert into foreignkey values(1,"Sakshi",19),(2,"Dipankar",19);
select *from foreignkey;

