-- Date time function in sql

select GETDATE()
select CURRENT_TIMESTAMP
select SYSDATETIME() 
select SYSDATETIMEOFFSET()

select GETUTCDATE()
select SYSUTCDATETIME()
select SYSDATETIMEOFFSET()



create table tblDateTime(
id int identity(1,1) primary key,
C_DateTIme datetime,
C_time time,
C_date date,
C_datetimeOffset datetimeoffset,
C_datetime2 datetime2,
C_SmallTime smalldatetime,
)

select * from tblDateTime


Insert into tblDateTime values(Getdate(),CURRENT_TIMESTAMP,SYSDATETime(),SYSDATETIMEOFFSET(),GETDATE(),GetDate())












