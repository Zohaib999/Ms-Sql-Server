-- Scalar User defined Function
 
-- Funtion to find out age in days

create Function F_tblEmployee(@ID int)
returns int
AS
 Begin
   Declare @Res int
     set @Res = @ID*365
     return @Res
 End


-- Calling Funtion
select dbo.F_tblEmployee(20) As Age_In_Days



-- Using it with a table
select Id,Name,Age,dbo.F_tblEmployee(Age) As [Age in Days]
from tblEmployee


-- We can use where clause
select Id,Name,Age,dbo.F_tblEmployee(Age) As [Age in Days]
from tblEmployee 
where dbo.F_tblEmployee(Age) < 10950


-- to Check inside a function
sp_helptext F_tblEmployee














