use SqlParactice

-- Cascading referenctial Integrity
			
			    --Means
-- No Action   ( Do Nothing )
-- Set Null    ( add null )
-- Cascade     ( Delete  )
-- Default     ( change to default value)

select * from tblEmployee
select * from tblGender

-- Removing Previous Constraint
alter Table tblEmployee drop Constraint tblEmployee_Gender_Fk 

-- Adding Column with Foreign Key and Cascade 
alter table tblEmployee  add Constraint tblEmployee_Gender_Fk 
Foreign Key(Gender) references tblGender(GenderId)
On Delete Cascade
On Update Cascade


-- Insert Some data in Primary Key Table (tblGender)
Insert into tblGender values(1,'male')
Insert into tblGender values(2,'Female')
Insert into tblGender values(3,'Unknown')

-- Insert Some data in Foreign Key Table (tblEmployee)
Insert into tblEmployee values(1,'Sam',1,20,'s@s','10-3-20','10-3-21')
Insert into tblEmployee values(2,'Sam',2,20,'s@s','10-3-20','10-3-21')
Insert into tblEmployee values(3,'Sam',1,20,'s@s','10-3-20','10-3-21')
Insert into tblEmployee values(4,'Sam',3,20,'s@s','10-3-20','10-3-21')


select * from tblEmployee
select * from tblGender


-- if i Delete data in primary key table then it will automatically 
-- delete on from the foreign key table 
delete from tblGender where GenderId=3





-- Adding Column with Foreign Key and default
alter table tblEmployee  add Constraint tblEmployee_Gender_Fk 
Foreign Key(Gender) references tblGender(GenderId)
On Delete set default  
On Update set default






