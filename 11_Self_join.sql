-- Self Join

-- Joining the column with itself

 
 Create table tbl_Manager(
 Id int,
 Employee_Name varchar(20),
 Manager_Id int
 )

 select * from tbl_Manager

 Insert into tbl_Manager values(1,'Mike',3)
 Insert into tbl_Manager values(2,'Rob',1)
 Insert into tbl_Manager values(3,'Tod',Null)
 Insert into tbl_Manager values(4,'Aee',1)
 Insert into tbl_Manager values(5,'Mile',1)


 -- Inner Left Self Join
 select     E.Employee_Name,M.Employee_Name
 from       tbl_Manager E
 Left Join  tbl_Manager M
 On         M.Id = E.Manager_Id


 -- Inner Self Join
 select     E.Employee_Name,M.Employee_Name
 from       tbl_Manager E
 Inner Join tbl_Manager M
 On         E.Id = M.Manager_Id

 -- Inner cross Self Join
 select      E.Employee_Name,M.Employee_Name
 from        tbl_Manager E
 cross join  tbl_Manager M
 






















