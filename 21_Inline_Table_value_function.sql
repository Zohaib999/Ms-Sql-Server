select * from tblEmployee

-- Inline table Value Function
Create Function Fn_TblEmployee_Gender(@Gen int)
  returns Table
As 
  return (Select Id,Name,Gender from tblEmployee)


-- Alter
Alter Function Fn_TblEmployee_Gender(@Gen int)
  returns Table
As 
  return (Select Id,Name,Gender from tblEmployee
  where Gender=@Gen )


-- Calling Function
Select * from dbo.Fn_TblEmployee_Gender(2)


-- using where clause
Select * from dbo.Fn_TblEmployee_Gender(2) where Id=3

-- Joining the Inline Function Table 

-- for Male
Select E.Name,G.Name
from dbo.Fn_TblEmployee_Gender(1) E
Join tblGender G
on   E.Gender = G.GenderId

-- for Female
Select E.Name,G.Name
from dbo.Fn_TblEmployee_Gender(2) E
Join tblGender G
on   E.Gender = G.GenderId

select * from tblEmployee
select * from tblGender




select * from tblGender

























