
select * from tblEmployee

select city from tblEmployee group by city

-- count fuction will count the Names in the city
select city,Count(Name) As Person_in_City 
from tblEmployee group by city


-- this will show gender in each city
select city,Count(Name) As Total,Gender
from tblEmployee group by Gender,city

select * from tblEmployee

-- where caluse
select city,Count(Gender) Total_Gender from tblEmployee
where city='Lahore' 
group by city,Gender

-- Having cause
select city,Gender from tblEmployee 
group by city,Gender
having city='Karachi' 


-- Now selecting the Employee of age 20
select Count(Age) as [Age_20],city,Gender from tblEmployee
where age=20
group by Age,city,Gender
order by city

-- Filter qurey
select Count(Age) as [Age_20],city,Gender from tblEmployee
where age=20
group by Age,Gender,city
having city='Lahore'

