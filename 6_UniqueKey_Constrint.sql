
-- Unique Key Constraint
-- It allows us to make it unique 
-- Primary Key did not allow us null 
-- Unique allow us null 

create table tblSalary(
id int Unique,
[Name] varchar(20),
[Month] varchar(20)
)

select * from tblSalary

-- Inserting data with null value
Insert into tblSalary(Name,Month) values('Abc','JAN')

-- Inserting another null data //Error Comes
Insert into tblSalary(Name,Month) values('BCD','FEB')


















