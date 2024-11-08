-- !!!!!!!!!!!!!!!!!!!!!!!!!! Class 13 (Last) !!!!!!!!!!!!!!!!!!!!!!!!!!

-- Topics
-- Triggers
-- DML Triggers (After,INSTEAD OF)
-- DDl Triggers
-- LOGON / LOGOFF

CREATE DATABASE pmtz_202310f_class_13;
use pmtz_202310f_class_13;

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


insert into Employees (name,Email,Salary) VALUES('Khan','khan@gmail.com',50000);
insert into Employees (name,Email,Salary) VALUES('Ahmed','ahmed@gmail.com',55000);
insert into Employees (name,Email,Salary) VALUES('Talha','talha@gmail.com',45000);

select * from Employees;
select * from EmployeesAdit;

GO
CREATE TRIGGER TR_EmployeeUpdate
on Employees
After Update
as
BEGIN
    DECLARE @newSalary int;
    DECLARE @oldSalary int;
    DECLARE @empId varchar(40);
    -- Get Employee New Salary
    SELECT @newSalary=Salary,@empId=id FROM inserted;
    -- Get Employee Old Salary
    SELECT @oldSalary=Salary FROM deleted;
    
    IF UPDATE(salary)
    BEGIN
       INSERT into EmployeesAdit(emp_id,message)
    VALUES(@empId,'Employee Salary Has been Updated Old Salary : ' + CAST(@oldSalary as varchar(50))  + ' New Salary : '+CAST(@newSalary as varchar(50))) 
    END
END

GO

UPDATE Employees SET Salary =60000 WHERE id='794DB6C3-9B33-450E-80CF-5CE81B4EE82E';
UPDATE Employees SET name='Talha Khan' WHERE id='794DB6C3-9B33-450E-80CF-5CE81B4EE82E';

DROP TRIGGER TR_EmployeeUpdate;



select Ea.id,Ea.message,E.name,E.Salary,E.Email,Ea.date from EmployeesAdit EA JOIN Employees E ON EA.emp_id =E.id;
GO
CREATE TRIGGER TR_EmployeeDelete
on Employees
after DELETE
AS
BEGIN
    DECLARE @emId VARCHAR(40)
    SELECT @emId=id from Employees;

    INSERT into EmployeesAdit (emp_id,message) VALUES (@emId,'Employee Has Been Removed');
END

GO

DELETE from Employees WHERE id='CC32A435-552A-42CC-AFF0-1641057A9562';


GO
CREATE TRIGGER TR_EmployeeInsert
on Employees
INSTEAD OF INSERT
AS
BEGIN

    INSERT into Employees(id,name,Email,Salary) 
    SELECT id,name,Email,Salary from inserted WHERE Salary >=20000
END

GO
insert into Employees (name,Email,Salary) VALUES('Rizwan','rizwan@gmail.com',75000);

insert into Employees (name,Email,Salary) VALUES('Abdullah','abdullah@gmail.com',15000);

GO
CREATE TRIGGER TR_OnTable_Create
ON DATABASE
FOR CREATE_TABLE
AS
BEGIN
    PRINT 'YOU CANNOT CREATE A TABLE IN THIS DATABASE'
    ROLLBACK TRANSACTION
END
GO

create TABLE test(
    id int,
    name varchar(20)
)