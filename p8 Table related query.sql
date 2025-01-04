# Table related queries  UPDATE

-- hme table me update krne se pahle update ko safe mode se off krna hoga
set sql_safe_updates = 0;
-- hme  student ka A grade ki jagah update karke wha hme O krna hai
update student set grade = "O" where grade = "A"; 

-- ek student ka marks update krna hai jiska marks 12 hai use update krke 94 krna hai
update student set marks= 93 where rollno = 105;

-- hme rollno 101 ka name and  marks update krna hai
update student set name = "Aman",marks = 95,grade="A" where rollno =101;

-- hme sabhi student ka marks 1 increase krna hai
update student set marks = marks+1 ;

select * from student;

# Delete Commands
-- hme us student ka dat delete krna jiska rollno 104 hai
delete from student where rollno =104;
select * from student;

