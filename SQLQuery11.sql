
use Demo
create table CoEmployees
(
EmployeeId int primary key identity(1,1) not null,
EmployeeName nvarchar(50) not null,
EmployeePosition nvarchar(50) not null,
Salary decimal(18,2) not null,
Depatment decimal(18,2) not null,
DateOfJoining datetime
)
USE Demo
insert into CoEmployees
values('John Doe','Manager',6000,1,2020-05-10),
('Jane Smith','Developer',4500,2,2021-06-15),
('Alan Turning','Analyst',4000,3,2022-03-20),
('Grace Hopper','Scientist',7000,1,2019-11-25),
('Ana Lovelace','Developer',5000,2,2023-01-10)

use Demo
create table DepartmentId
(
DepartmentId int primary key identity(1,1) not null,
DepartmentName nvarchar(50) not null,
DepartmentLocation nvarchar(50) not null,
)

Use Demo
insert into DepartmentId
values
('HR', 'New York'),('IT','San Francisco'),('Finance','Chicago')

insert into CoEmployees
values('Alan Smith','HR Employee',3000,1,2024-12-31)

update CoEmployees
set Salary=5000
where EmployeeName = 'Jane Smith' 

delete from CoEmployees where EmployeeId=3

select *
from CoEmployees
where Depatment = 2

insert into DepartmentId
values('Security','Tokyo')

select *
from DepartmentId
where DepartmentLocation = 'New York'


update DepartmentId
set DepartmentLocation = 'Boston'
where DepartmentLocation = 'New York'

update CoEmployees
set Salary=Salary+(Salary*0.10)

select * from CoEmployees
delete from CoEmployees where Depatment = 3  

insert into CoEmployees
values('Robert Frank','IT Employee',6000,2,2024-12-31)



