create DATABASE PB101;
use PB101;
create table Groups(
[Id] int,
[Name] nvarchar(50)
);
drop table Groups;
create table Groups(
[Id] int,
[name] nvarchar(50)
);


create table Students(
[Id] int,
[Name] nvarchar (50),
[Surname] nvarchar (50),
[Age] int
)
drop table Groups
alter table Students
add [Address] nvarchar(200)
alter table Students
drop column [Address]

EXEC sp_rename MyStudents,Students
EXEC sp_rename'Students.Lastname',Surname

select *from Students

insert into Students([Id],[Name],[Surname],[Age])
values(2,'Ilqar','Shiriyev',26),
(3,'Reshad','Agayev',21),
(4,'kamran','Muradov',24),
(5,'Hacixan','Hacixanov',19),
(6,'Zeyqem','Ashurov',39)
 
 delete from Students where [Id]=2

 insert into Students([Id],[Name],[Surname],[Age])
values(7,'Behruz','Eliyev',37)

update Students
set [Age]=25
where [Id]=5

select *from Students

select [Age] as 'Student age' from Students	
select COUNT(*) as 'Student count' from Students
select AVG([Age]) from Students
select SUM ([Age]) as 'Students age sum' from Students
select Max ([Age]) as 'Students age max' from Students
select *from Students where [Id]=3
select *from Students where [Id]>3
select Count(*) from Students where [Id]>3

select *from Students where [Id]>2 and [Id]<5
select *from Students where Age between 25 and 37

select *from Students where [Name] like '%r'

select * from students where [Age]=( select MIN(Age) from Students)

Declare @age int
set @age=( select MIN(Age) from Students)
select *from Students where [Age]=@age
select *from Students
order by [Age] desc

Declare @resultName nvarchar(50)
set @resultName=(select [Name] from Students where [Id]=7)

SELECT SUBSTRING (@resultName,1,3) as 'Behruz adinin qisaldil'
 Select *from Students

 select LEN( [Name]) as 'Adin uz' from Students where [Id]=7 

 select SUBSTRING([Name],1,3) from Students

 create table Employees(
[Id] int primary key identity(1,1),
[Name] nvarchar (50) not null,
[Surname] nvarchar(50) default'XXX',
[Age] int check(Age>=18),
[Email] nvarchar(100) unique,

)
insert into Employees([Name],[Age],[Surname],[Email])	
values ('Hacixan','Hacixanov',19,'hacixan@gmail.com')

select *from Employees
