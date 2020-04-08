                        -- Select Quries


-- Select All columns from table
select * from tblEmployee

-- Distint/different Selection 
Select Distinct Name from tblEmployee
 

--Selecting Mulitple Columns Column 
--distinct Column name comes first to select Different columns
Select distinct Name,Email from tblEmployee  

-- We can also order with repect to asc/desc Ordering Command for the 
Select distinct Name,Email from tblEmployee  order by Name Desc


-- Condiional select statement 
select * from tblEmployee where (Age>30)

-- Multi-Conditional statment 
select * from tblEmployee where (Age <30 and id<4)


-- Search Quries
-- (Underscore _ means UnKnown Single Character)
-- (Percentage % means UnKnown Multiple Character)
Select * from tblEmployee where Name like'_o%'


-- We can combine it with a simple Logic operation  
Select * from tblEmployee where Name like'_%' and Id = 1


-- Complex quriesfor select 
select * from tblSalary
 
Create table tblsalary(
id int not null references tblEmployee(Id),
Name varchar(20),
Amount int
)


select * from tblEmployee

-- Creating a data from aother table
Insert into tblsalary(Id,Name) select Id,Name from tblEmployee
update tblsalary set Amount=1000 where Id=1
update tblsalary set Amount=3000 where Id=2
update tblsalary set Amount=4000 where Id=3
update tblsalary set Amount=5000 where Id=4
update tblsalary set Amount=6000 where Id=5
update tblsalary set Amount=6000 where Id=6
update tblsalary set Amount=4000 where Id=7


select * from tblsalary


--Operators in Sql  ( = , != , > , < , <= ) . etc

-- Not equal or !=
select * from tblEmployee where Id <> 1

select * from tblEmployee where Age In (20,30)

select * from tblEmployee where Age between 30 and 40

select * from tblEmployee where Name Not Like 'sam'


-- [] is used to select Any Character starting 
select * from tblEmployee where Name Like '[ZAS]%'




-- We also select top 5 
select top 5 Name,Id,Age from tblEmployee






