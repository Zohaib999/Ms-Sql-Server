select * from tblEmployee
select * from tblsalary


-- Inner Join or Join
select [tblEmployee].Name,Email,Amount As Salary
from tblEmployee
Inner Join tblsalary
on tblEmployee.Id = tblsalary.id



-- Left Join or Join
select [tblEmployee].Name,Email,Amount As Salary
from tblEmployee
Left Join tblsalary
on tblEmployee.Id = tblsalary.id


-- Right Join or Join
select [tblEmployee].Name,Email,Amount As Salary
from tblEmployee
right Join tblsalary
on tblEmployee.Id = tblsalary.id


-- Full Join or Join
select [tblEmployee].Name,Email,Amount As Salary
from tblEmployee
Full Join tblsalary
on tblEmployee.Id = tblsalary.id


-- Cartisean  Product (Multplication of two tables)
select tblEmployee.Name,Email,tblsalary.Name  
from tblEmployee
Cross Join tblGender



