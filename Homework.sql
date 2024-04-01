drop table Students
drop table Teachers
create table Teachers(
[Id] int primary key identity(1,1),
[Name] nvarchar (50),
[Surname] nvarchar (50),
[Email] nvarchar(100),
[Age] int
)

create table Students(
[Id] int primary key identity (1,1),
[FullName] nvarchar (100),
[Age] int,
[Adress] nvarchar (255)

)
insert into Teachers ([Name],[Surname],[Email],[Age])
values ('Cavid','Basirov', 'cavid@gmail.com',30),
        ('Ahad','Eliyev','ahad@gmail.com',25)
select * from Teachers	

insert into Students([FullName],[Age],[Adress])
values ('Ziko Basirov', 34,'cavid@gmail.com'),
        ('Baxa Eliyev',29,'ahad@gmail.com')

select * from Students

select COUNT(*) as StudentCount from Students

select [Name],[Surname] from Teachers where [Age]>=20

select* from Teachers where [Email] like '%c%';