
-- Mathematical Function

--ABS
select ABS(-20)       -- return  20
--CELLING
Select CEILING(19.1)  -- return  20
Select CEILING(-19.1) -- return -19
--FLOOR
Select FLOOR(19.2)    -- return  19
Select FLOOR(-19.1)   -- return -20
--SQR
Select SQUARE(9)      -- return 81
--SQRT
Select SQRT(81)       -- return 9    

--RAND means Random
select RAND()*1
select FLOOR(RAND()*100)

Declare @A int
set @A = 1
While(@A<=10)
 Begin
  Print CEILING(RAND()*10)
  set @A = @A+1
 END
--Round 
Select ROUND(786.123,1)
Select ROUND(786.163,1)

Select ROUND(786.163,1,2)
Select ROUND(786.163,2,2)
Select ROUND(786.163,2,1)

Select ROUND(786.163, -2) -- Round the left two value
Select ROUND(786.163, -1) -- Round the left one vaue






select * from tblEmployee









