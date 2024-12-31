use TaskDb
create table Students
(
StudentId int primary key identity(1,1) not null,
StudentName nvarchar(50),
StudentAge int,
StudentEmail nvarchar(50)
)

create table Courses
(
CourseId int primary key identity(1,1) not null,
CourseName nvarchar(50)
)

insert into Students values
('Mark Johnson', 21, 'mj@gmail.com'),
('Will Smith', 22, 'wl@hotmail.com'),
('Michael Jordan', 23, 'mj23@gmail.com')

insert into Courses values
('Chemistry'),('Biology'),('Physics'),('Calc'),('CE')

select stu.StudentName, cou.CourseName  
from Students as stu inner join Courses as cou
on stu.StudentId = cou.StudentId

update Students
set StudentEmail = 'willsmith@gmail.com'
where StudentId = 2

delete from Courses where CourseId = 1
and StudentId = 3

alter table Students
add Gender nvarchar(50)

update Students
set Gender = 'Male'

select * from Students
where StudentName LIKE 'M%'

select upper(StudentName) as StudentName from Students

select Lower(CourseName) as CourseName from Courses

select stu.StudentName, cou.CourseName  
from Students as stu inner join Courses as cou
on stu.StudentId = cou.StudentId

insert into Students
values ('Tareq', 25, 'trq@gmail.com', 'Male')

insert into Courses
values ('Sports',4)

select * 
from Students
where StudentAge = (select min(StudentAge) from Students)

delete from Courses
where StudentID = 1  
delete from
Students where StudentName = 'Mark Johnson'

create proc sp.DisplayStudents
as
    select stu.Name, cour.coursename
    from Students stu inner join Courses cour on stu.StudentId = cour.CourseId
   exec sp_DisplayStudents

   create proc sp_DisplayIDS
   as select stu.Name , cou.CourseName
   from Students stuinner join Courses cour on stu.StudentId = cour.CourseId
   exec sp_DisplayStudents