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
select SCOPE_IDENTITY()
select @@IDENTITY



