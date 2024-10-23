-- Class 08

-- Topics
-- System Functions
-- Custom Functions
--      Scaler Function
--      Inline Table Functions
--      Multiline Table Functions

-- String Functions
-- Date & Time Functions

CREATE DATABASE pmtz_202310f_class_08;

use pmtz_202310f_class_08;

CREATE TABLE Students(    
    id INT PRIMARY KEY IDENTITY(1,1),    
    firstName VARCHAR(30),    
    lastName VARCHAR(30),    
    email VARCHAR(30),    
    phone VARCHAR(20),    
    class VARCHAR(40)
);

INSERT INTO Students (firstName, lastName, email, phone, class) VALUES
('Ayesha', 'Khan', 'ayesha.khan@example.com', '03001234567', '10th Grade'),
('Ali', 'Ahmed', 'ali.ahmed@example.com', '03101234567', '9th Grade'),
('Fatima', 'Hussain', 'fatima.hussain@example.com', '03211234567', '8th Grade'),
('Usman', 'Qureshi', 'usman.qureshi@example.com', '03321234567', '11th Grade'),
('Zainab', 'Sheikh', 'zainab.sheikh@example.com', '03431234567', '12th Grade'),
('Hassan', 'Raza', 'hassan.raza@example.com', '03541234567', '10th Grade'),
('Sara', 'Malik', 'sara.malik@example.com', '03651234567', '9th Grade'),
('Adeel', 'Iqbal', 'adeel.iqbal@example.com', '03761234567', '11th Grade'),
('Sana', 'Farooq', 'sana.farooq@example.com', '03871234567', '8th Grade'),
('Bilal', 'Shah', 'bilal.shah@example.com', '03981234567', '12th Grade'),
('Maira', 'Saeed', 'maira.saeed@example.com', '03091345678', '10th Grade'),
('Kamran', 'Ali', 'kamran.ali@example.com', '03111345678', '9th Grade'),
('Rabia', 'Naz', 'rabia.naz@example.com', '03221345678', '11th Grade'),
('Naveed', 'Chaudhry', 'naveed.chaudhry@example.com', '03331345678', '8th Grade'),
('Bushra', 'Aslam', 'bushra.aslam@example.com', '03441345678', '12th Grade'),
('Danish', 'Rafiq', 'danish.rafiq@example.com', '03551345678', '10th Grade'),
('Huma', 'Hashmi', 'huma.hashmi@example.com', '03661345678', '9th Grade'),
('Waqar', 'Anwar', 'waqar.anwar@example.com', '03771345678', '11th Grade'),
('Nida', 'Kamran', 'nida.kamran@example.com', '03881345678', '8th Grade'),
('Rehan', 'Siddiqui', 'rehan.siddiqui@example.com', '03991345678', '12th Grade');


-- SELECT CONCAT(firstName,' ',lastName) as name,email,phone,class FROM Students;

SELECT LEN(firstName) as length,firstName FROM Students;


-- Custom Scaler Function


CREATE FUNCTION addition()
RETURNS INT
AS
BEGIN
    RETURN 5+5;
end;

-- Call a Function
select dbo.addition()


-- Modify a Function
ALTER FUNCTION addition(@num1 INT,@num2 INT)
RETURNS INT
AS
BEGIN
    RETURN @num1+@num2;
end;
-- Call a Function
select dbo.addition(30,50) as 'Addition'



-- select * from Students WHERE email='naveed.chaudhry@example.com';


-- Custom Inline Function

CREATE FUNCTION StudentEmail(@email VARCHAR(30))
RETURNS TABLE
as
   RETURN (SELECT * from Students WHERE email=@email)


-- Call a Function

SELECT * from StudentEmail('naveed.chaudhry@example.com')

SELECT firstName,lastName from StudentEmail('naveed.chaudhry@example.com');


-- Multiline Table Functions

CREATE FUNCTION GetStudentByID(@id INT)
RETURNS @myTable TABLE (
    firstName VARCHAR(40), 
    lastName VARCHAR(40)
)
AS
BEGIN
    INSERT INTO @myTable (firstName, lastName)
    SELECT firstName, lastName 
    FROM Students 
    WHERE id = @id;
    
    RETURN;
END;

SELECT firstName from GetStudentByID(1);
SELECT * from GetStudentByID(1);


-- Indexes In SQL 

CREATE TABLE employees(
    id int PRIMARY key,
    name VARCHAR(20),
    email VARCHAR(30),
    salary int
)


insert into employees (id,name,email,salary) VALUES
(3,'Kabeer','kabeer@gmail.com',5000),
(2,'Baist','basit@gmail.com',5000),
(4,'Khan','khan@gmail.com',5000);

insert into employees (id,name,email,salary) VALUES
(1,'Qadir','Qadir@gmail.com',10000),
(7,'Hassan','hassan@gmail.com',12000),
(8,'Kashif','kashif@gmail.com',15000);

SELECT * from employees;

CREATE INDEX  IN_Salary
on employees (salary DESC)