CREATE DATABASE pmtz_202310f_class2;


CREATE TABLE students(
    id INT PRIMARY Key IDENTITY(1,1),
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    age INT NOT NULL,
    city VARCHAR(30) NOT NULL DEFAULT 'Karachi'
);

--  not null
-- default


INSERT INTO students (name, email, age) VALUES
('Alice Johnson', 'alice.johnson@example.com', 20),
('Bob Smith', 'bob.smith@example.com', 22),
('Catherine Lee', 'catherine.lee@example.com', 21),
('David Kim', 'david.kim@example.com', 23),
('Ella Brown', 'ella.brown@example.com', 19),
('Frank White', 'frank.white@example.com', 22),
('Grace Chen', 'grace.chen@example.com', 20),
('Henry Davis', 'henry.davis@example.com', 21),
('Isabella Martinez', 'isabella.martinez@example.com', 22),
('Jack Wilson', 'jack.wilson@example.com', 19),
('Katherine Taylor', 'katherine.taylor@example.com', 23),
('Liam Thompson', 'liam.thompson@example.com', 20),
('Mia Garcia', 'mia.garcia@example.com', 21),
('Noah Harris', 'noah.harris@example.com', 22),
('Olivia Clark', 'olivia.clark@example.com', 19),
('Peter Lewis', 'peter.lewis@example.com', 23),
('Quinn Walker', 'quinn.walker@example.com', 20),
('Ruth Hall', 'ruth.hall@example.com', 21),
('Sam Young', 'sam.young@example.com', 22),
('Tina Allen', 'tina.allen@example.com', 19);


SELECT * FROM students;


-- Update Data


UPDATE students SET name='Rizwan',email='rizwan@gmil.com' WHERE id=7;


-- Delete Data

DELETE from students WHERE name='Sam Young';

-- TRUNCATE

TRUNCATE TABLE students;

-- Relational Operators

-- < ,  > , = , >= , <= , !=

-- Logical Operators

-- and , or , not

SELECT * FROM students WHERE age<20;


SELECT * from students WHERE age !=20;