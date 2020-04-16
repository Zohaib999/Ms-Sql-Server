
-- Left, Right , Charindex, substring

select Left('Zohaib@gmail.com',6)

select right('Zohaib@gmail.com',10)

select CHARINDEX('@','Zohaibahmad90190@gmail.com')
select CHARINDEX('@','Zohaib@gmail.com')

select SUBSTRING('Zohaibahmad90190@gmail.com',7,10)




select * from tblEmployee




select Name,Email from tblEmployee
select Name,ISNULL(SUBSTRING(Email,CHARINDEX('@',Email)+1,LEN(Email)-CHARINDEX('@',Email)),'No Email') 
from tblEmployee



select * from tblEmployee 


insert into tblEmployee values('bihjvvvvvv',2,32,
'ivhebihvfebb@ciuwbdcwdcbiwiuwrvn','Lahore')






















