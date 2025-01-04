# Q1. create database for your company named techpile
create database if not exists techpile;
# prsent select database 
use techpile;

# create a table inside this database to store epmloyee info (id,name and salary).
create table if not exists employees(
id int primary key,
name varchar(50) not null,
salary  float4
);

# add information in table 
insert into employees(id,name,salary) values(1,"Adam",25000);
insert into employees values(2,"bob",30000);
insert into employees values(3,"casey",40000);

# Select & view all your table data.
select *from techpile.employees; 
