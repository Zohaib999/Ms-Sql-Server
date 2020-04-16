-- Built-In Function

select * from tblEmployee

-- Counting Lenght 
select Name,LEN(Name) from tblEmployee

-- Asci value

select CHAR('65')

-- Loop
Declare @I int 
set @I = 60
 while(@I <= 90)
   Begin 
     Print CHAR(@I)
     set @I = @I+1
   End


-- For Removing Right Spaes
select RTRIM(Name) from tblEmployee


-- For Removing left Space
select LTRIM(Name) from tblEmployee


-- Convert all the lower expression into upper case
select UPPER(Name) from tblEmployee


-- Convert all the uppercase to lower case
select LOWER(Name) from tblEmployee



-- Reverseing the text
select REVERSE(Name) from tblEmployee
 










































