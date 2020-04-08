select * from dbo.tblEmployee

-- Enabling Identity Column in Table

delete from tblEmployee 

-- Droping  primary Key Column And Creating it 
--  again with the with identity column

Alter table tblEmployee drop constraint 
PK__Employee__3214EC07B92FF02F

-- Indentity(seeding, Increment)
Alter table tblEmployee add Id int primary key
identity(1,1)


select * from tblEmployee

insert into tblEmployee values('Zohaib',1,20,'Z@Z','10-2-0','10-2-0')
insert into tblEmployee values('AHmed',1,20,'Z@Z','10-2-0','10-2-0')
insert into tblEmployee values('Ali',2,20,'Z@Z','10-2-0','10-2-0')
insert into tblEmployee values('Sd',2,20,'Z@Z','10-2-0','10-2-0')


-- if we delete some data inside the table then that id will 
--  remain making a empty space insidde the table

delete from tblEmployee where Id=3

select * from tblEmployee

Insert into tblEmployee values('sam',2,32,'sam@s','10-2-20','10-2-20')


-- for this we have to specify the Identity Insert on 
--if we insert the value with speicification of
-- the id then we should have to turn the indentity 
-- off first otherwise it will cause error

set identity_insert tblEmployee ON


-- Now we also have to specifie the tblName(columnName)
insert into tblEmployee([Name],Gender,Age,Email,[Start_date],[End_date],Id)

values('sam',2,32,'sam@s','10-2-20','10-2-20',3)
insert into tblEmployee([Name],Gender,Age,Email,[Start_date],[End_date],Id)
values('sam',2,32,'sam@s','10-2-20','10-2-20',4)
insert into tblEmployee([Name],Gender,Age,Email,[Start_date],[End_date],Id)
values('sam',2,32,'sam@s','10-2-20','10-2-20',6)



select * from tblEmployee


-- Now we need Turn the identity_inser off again
set identity_insert tblEmployee OFf


select * from tblGender

-- For checking the last_identity value

select SCOPE_IDENTITY() --return the current session/scope value

select @@IDENTITY    --return the current session of any scope value

-- Q:
	-- If the Indentity Column reachs to the 100 values and then a the 
	--  values get deleted then it the next vaues are start from the 
	--   101 vlaues 

-- A:
	-- The solution is to reset the identity column

use sqlparactice
select * from tblEmployee

-- Deleting some data
Delete from tblEmployee where id=7

-- now if we insert some data  it will start from next
-- so we can reset Identity

DBCC CHECKIDENT(tblEmployee, RESEED, 20)

-- Now Id will start from 21
insert into tblEmployee values('ss',2,30,'s@S','2000-10-02',
'2000-10-02')


-- We can check the last value in the IDENTITy Column
--   by this command 

select IDENT_CURRENT('tblEmployee') 
--return the any session/scope value





