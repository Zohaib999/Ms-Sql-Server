select * from tblEmployee
select * from tblsalary

insert into tblEmployee values('Saks',2,30,Null,'Lahore')
insert into tblsalary values(1021,'Saks',null)


-- Intelligent join


-- remaining values retrive from left table
select tblEmployee.Name,Age,Amount As Salary
from tblEmployee
join tblsalary
On tblEmployee.Id = tblsalary.id
where tblEmployee.Email Is null

-- remaining values retrive from left table
select tblEmployee.Name,Age,Amount As Salary
from tblEmployee
Left join tblsalary
On tblEmployee.Id = tblsalary.id
where tblEmployee.Email Is null



-- remaining values retrive from left table
select tblEmployee.Name,Age,Amount As Salary
from tblEmployee
right join tblsalary
On tblEmployee.Id = tblsalary.id
where tblEmployee.Email Is null



-- remaining values retrive from left table
select tblEmployee.Name,Age,Amount As Salary
from tblEmployee
full join tblsalary
On tblEmployee.Id = tblsalary.id
where tblEmployee.Email Is null












