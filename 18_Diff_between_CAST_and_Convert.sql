-- difference between Cast and Convert 

-- Cast convert the value
select * from TblDOB
select Id,DOB,CAST(DOB as nvarchar(15)) AS Converted 
from TblDOB
-- We can convert it into Date to get only date
select Id,DOB,CAST(DOB as Date) AS Converted 
from TblDOB

-- Group By
select CAST(DOB as date),Count(Id) from TblDOB
group by CAST(DOB as date)









-- Convert 
select * from TblDOB
-- same as Cast but have (Styles of date)
select ID,Dob, Convert(varchar,DOB) 
from tblDOB
select ID,Dob, Convert(varchar,DOB,101) 
from tblDOB
-- We can Group by 
select Count(ID),Convert(date,DOB) from TblDOB
group by Convert(date,DOB)































