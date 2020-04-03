--used for comments
-- master is the default user
Use master

-- creating database 
Create database DbEmployee

-- Altering database name
Alter database DbEmployee modify name=Employee

-- Renaming Database using Stored Stored Procedures command
sp_renameDB 'DbEmployee','Employee'

-- Removing other users and rollbacking/stop previous query transactions
Alter database Employee set Single_User with rollback immediate

