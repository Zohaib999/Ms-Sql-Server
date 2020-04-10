-- Stored Procedures

-- Simple Stored Procedures

Create Procedure spGetEmployee
As 
     Begin
         Select * from tblEmployee
     End


-- To execute 
spGetEmployee
EXEC spGetEmployee
Execute spGetEmployee

select * from tblEmployee

-- Parameteric 
Create Proc spGetParamEmployee
@city varchar(20),
@Gender int 
  As 
     Begin
         Select city,Gender from tblEmployee Where Gender=@Gender and city=@city
     End


-- Executing Parametric Procedure
EXEC spGetParamEmployee 'Lahore',2




-- viewing Procedure command 
sp_helptext spGetEmployee


-- ALtering Stored  
Alter Procedure spGetEmployee  
As   
 Begin  
     Select * from tblEmployee where Id IS NOT NUll  
 End  

-- For Droping Stored Procedure
drop proc spGetEmployee
drop procedure GetParamEmployee 


-- Encrypting Stored Procedure
Alter Proc spGetEmployee
with Encryption
As 
  Begin 
    select * from tblEmployee where id <> Null 
  End


-- Now if we view the Procedure then it will cause error
sp_helpText spGetEmployee
-- But we can still drop or delete it
























