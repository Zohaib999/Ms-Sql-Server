
-- Check Constraint in a table 

select * from tblEmployee

-- what i wnat is to allow the user to 
--    enter which have the age >20 , <40

Alter table tblEmployee add Constraint tblEmployee_Age_Chk
check (age < 40 and age >= 20)


-- Now if we try to insert a greater value than CHK
Insert into tblEmployee values('Aahb',2,10,'a@a''2000-10-02','2000-10-02')
-- Error Occur because of check Constraint 








