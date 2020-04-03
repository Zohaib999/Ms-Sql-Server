-- connecting to Our database 
use EmployeeDb


-- cretaing table 
create table tblEmployees(
ID int,
EmployeeName varchar(30),
Age int,
Gender varchar(3),
Email varchar(50),
)

-- Not allow null to id for Primary key
Alter table tblEmployee alter column Id int Not Null

-- Adding primary Key
Alter table tblEmployee add Constraint tblEmployee_Pk Primary Key(Id)

-- creating table with Primary key, not null
create table tblEmployees(
ID int primary key Not Null,
EmployeeName varchar(30) Not Null
)

-- Changing table name 
-- sp_rename 'Old Table Name' to 'New Table Name'
sp_rename 'tblEmployees','tblEmployee'

-- Add one more column in the existing table
Alter table tblEmployee add PhoneNo varchar(20)

-- Changing Column Type 
Alter table tblEmployee alter column Id varchar(100)

-- Changing Column Name 
sp_Rename 'tblEmployee.EmployeeName','Name'

-- Creating table salary
create table tblSalary(
Id int,
Amount int
)

-- Adding foreign key
Alter table tblSalary add Constraint tblSalary_Id_FK 
Foreign Key (Id) references tblEmployee(Id)

-- Adding another column
Alter table tblSalary add Position varchar(20);


-- Adding constraint if someone pass null then it will be 
--    automatically replaced by Unkown
Alter table tblSalary add constraint tblEmployee_Position_Null
default 'Unkown' for Position


-- Droping table
Drop table tablename

-- Drop column inside a table 
Alter table tblEmployee drop column End_date

select * from tblEmployee

-- Adding column with Constraint inside a table
Alter table tblEmployee add End_date date Constraint 
tblEmployee_End_date Default null 

--Atering table column with datatype
Alter table tblEmployee alter column Gender varchar(10)

--Atering table column with datatype
Alter table tblEmployee alter column Gender int null 

-- Adding table with foreign key
Alter table tblEmployee add Constraint tblEmployee_Gender_FK 
Foreign Key(Gender) references tblGender(GenderId) 


--Adding a table for refernces of primary key
Create table tblGender(
GenderId int primary key not null,
Name varchar(30) not null
)

select * from tblGender
select * from tblEmployee

-- to empty the data inside the table 
truncate table tblEmployee










