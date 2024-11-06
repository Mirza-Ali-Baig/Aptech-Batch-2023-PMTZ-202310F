
--topics;

--1. temporary Table
--2. local temporary & Global temporary Table
--3. guid (globally Unique Identifier)
--4. triggers

CREATE DATABASE pmtz_202310f_class12;
use pmtz_202310f_class12;


CREATE TABLE #Students(
    ID VARCHAR(40) PRIMARY KEY DEFAULT NEWID(),
    NAME VARCHAR(30) NOT NULL
);

insert into #Students (NAME) values ('Basit');


select * from #Students

drop table #Students;
select LEN(ID) from #Students


-- Global temporary Table

create table ##Users(
	ID VARCHAR(40) PRIMARY KEY DEFAULT NEWID(),
    NAME VARCHAR(30) NOT NULL,
	EMAIL varchar(50) NOT NULL UNIQUE,
	PASSWORD varchar(60) NOT NULL
);

--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! triggers !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
-- DML (insert,update,delete)
-- DDL

-- Types of Triggers
-- After Trigger
-- Instad of Triiger
CREATE TABLE Employees(
    id  VARCHAR(40) PRIMARY KEY DEFAULT NEWID(),
    name VARCHAR(30) NOT NULL,
    Email VARCHAR(30) NOT NULL UNIQUE,
    Salary int NOT NULL

)

CREATE TABLE EmployeesAdit(
    id  VARCHAR(40) PRIMARY KEY DEFAULT NEWID(),
   emp_id VARCHAR(40),
   message VARCHAR(100),
   date Date DEFAULT GETDATE()
   FOREIGN KEY(emp_id) REFERENCES Employees(id)
)

SELECT * from EmployeesAdit;
SELECT * from Employees;

GO
CREATE TRIGGER TR_EmployeeInsert
on Employees
After INSERT
as
BEGIN
    PRINT 'Employee Insrted Successfully !!'
END
insert into Employees (name,Email,Salary) VALUES('Khan','khan@gmail.com',50000);

GO
ALTER TRIGGER TR_EmployeeInsert
on Employees
After INSERT
as
BEGIN
   SELECT top 1 * from Employees ORDER by id DESC;
END

GO
insert into Employees (name,Email,Salary) VALUES('Ahmed','ahmed@gmail.com',55000);

GO
ALTER TRIGGER TR_EmployeeInsert
on Employees
After INSERT
as
BEGIN
   SELECT * from inserted;
END

GO
insert into Employees (name,Email,Salary) VALUES('Ahmed','ahmed@gmail.com',45000);


GO
ALTER TRIGGER TR_EmployeeInsert
on Employees
After INSERT
as
BEGIN
DECLARE @empId VARCHAR(40);
   SELECT @empId=id from inserted;

   INSERT into EmployeesAdit (emp_id,message)
   VALUES (@empId,'New Employee in our Team');
END

GO

insert into Employees (name,Email,Salary) VALUES('Talha','talha@gmail.com',45000);

select * from EmployeesAdit;



-- Format Date
select id,emp_id,message,FORMAT(CAST([date] as varchar(40)),'YYYY-MM-DD')  from EmployeesAdit;


-- Update Trigger
GO
CREATE TRIGGER TR_EmployeeUpdate
on Employees
After Update
as
BEGIN
    DECLARE @salary int;
    SELECT @salary=Salary FROM inserted;
    SELECT @salary;
    IF UPDATE(@salary)
    BEGIN
        
    END
END

GO

update Employees set name='Fahad' WHERE id= '07EC3194-6806-4383-97A5-8DF7F3F6B4D2'