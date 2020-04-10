-- Replacing Null value

select * from tbl_Manager

-- 3 method of replacing NULL

-- ISNULL()
select  E.Employee_Name, ISNULL(M.Employee_Name,'NO MANAGER') As Manager
From    tbl_Manager E
Left Join    tbl_Manager M
on      E.Manager_Id = M.Id 


-- COALESCE
select       E.Employee_Name,COALESCE( M.Employee_Name,'No Manager')
from         tbl_Manager E
Left join    tbl_Manager M
on           M.Id = E.Manager_Id



-- Using Case 
select     E.Employee_Name, 
 Case When M.Employee_Name IS NULL then 'No Manager' Else M.Employee_Name END As Manager
from      tbl_Manager E
Left join tbl_Manager M
on   E.Manager_Id = M.Id

select * from tbl_Manager


-- Group by paractice


select * from tblEmployee

select city,Gender,Count(Id) As [No.] from tblEmployee 
group by city,Gender



select ISNULL(Null,'Manager')
select COALESCE(Null,Null,Null,'Zohaib')
select Case When Null is Null then 'NO NAME' Else
'Zohaib' END








