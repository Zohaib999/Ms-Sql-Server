-- datetime More


-- For checking the date we have a ISDATE function
select  ISDATE('ZOHAIB')  -- Return 0
select  ISDATE(GetDate()) -- Return 1


-- For Finding day
select Day('2020-12-22')

-- For Finding dayname
select DATENAME(MONTH,GETDATE())
select DATENAME(DAY,GETDATE())
select DATENAME(WEEKDAY,GETDATE())


Create Table TblDOB(
Id int primary key identity(1,1),
DOB DatetimeOffset
)


Insert into TblDOB values(CURRENT_TIMESTAMP)
Insert into TblDOB values(GetDate())
Insert into TblDOB values(SYSDATETIMEOFFSET())
Insert into TblDOB values(SYSDATETIMEOFFSET())
Insert into TblDOB values(SYSDATETIMEOFFSET())
Insert into TblDOB values(SYSDATETIMEOFFSET())



select * from TblDOB




select *,DATENAME(DAY,DOB) AS DAY,
         MONTH(DOB) AS Month,
         Year(DOB) As Year,
         DateName(MINUTE,DOB) As Date,
         DAteName( TZOFFSET,DOB) As Time
from TblDOB















