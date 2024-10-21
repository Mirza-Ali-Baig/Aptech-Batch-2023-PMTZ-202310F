CREATE DATABASE pmtz_202310f_class_07;

use pmtz_202310f_class_07;


CREATE TABLE customers(
    id int PRIMARY key IDENTITY(1,1),
    name VARCHAR(30) not null,
);

-- ============================== Alter Commands ==============================

-- add column
-- drop column
-- modify column

-- add column
ALTER TABLE customers add email VARCHAR(30);
ALTER TABLE customers add address VARCHAR(60);

SELECT * from customers;


-- drop column

Alter TABLE customers drop COLUMN address;


-- modify column

-- Alter TABLE customers MODIFY COLUMN email varchar(70);

ALTER TABLE customers ADD CONSTRAINT cu_email UNIQUE(email);


insert into users (username,email) VALUES('Baist','basit@gmail.com')


ALTER TABLE customers DROP CONSTRAINT cu_email;

-- Rename a Column

EXECUTE sp_rename 'customers.name','username','COLUMN';


-- Rename a Table
EXECUTE sp_rename 'customers','users';

select * from users;

-- Rename a Database

EXECUTE sp_renamedb @dbname='pmtz_202310f_class_07',@newname='new_db';
EXECUTE sp_renamedb 'pmtz_202310f_class_07','new_db';


-- Create a View 

CREATE VIEW User_Info
as
SELECT * from users;


-- Call a View

SELECT * from User_Info;
SELECT username from User_Info;

ALTER VIEW User_Info
as
SELECT * from users WHERE id=1;

-- ============================== Variables in SQL ==============================

-- DECLARE name datatype

DECLARE @name VARCHAR(20); 
DECLARE @age int; 

-- SET , SELECT

SET @name='Sajid';
SET @age=20;

-- PRINT(@name);
SELECT @name;
SELECT @name as 'Name';
SELECT @name,@age;
SELECT @name as 'Name',@age as 'Age';





DECLARE @id int,@username VARCHAR(40), @email VARCHAR(30);

select @id=id,@username=username,@email=email from users;

SELECT @id,@username,@email;
SELECT @id as 'id',@username as 'name',@email as 'email';

-- input parameter
-- output parameter

CREATE PROCEDURE Get_Email @id int,@email VARCHAR(30) OUTPUT
AS

BEGIN
    SELECT @email=email from users where id=@id;
END


DECLARE @email VARCHAR(30);
EXECUTE Get_Email @id=4,@email=@email output;

select @email