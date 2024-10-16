CREATE DATABASE pmtz_202310f_class3;


CREATE TABLE courses(
    id int PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(30) not NULL
);

insert into courses (name) VALUES ('PHP'),('Laravel'),('Javascript'),('Python'),('Java'),('Rust'),('Go'),('Mojo')



CREATE TABLE students(
    id int PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(30) not NULL,
    email VARCHAR(30) not NULL UNIQUE,
    course_id int NOT NULL,
    FOREIGN KEY(course_id) REFERENCES courses(id) ON DELETE CASCADE
);


INSERT INTO students (name,email,course_id) VALUES('Basit','basit@gmail.com',2),('zahid','zahid@gmail.com',3),('sajid','sajid@gmail.com',1) 




SELECT s.id,s.name,s.email,c.name FROM students s Left JOIN courses c on s.course_id = c.id;

-- PRIMARY KEY = FOREIGN KEY

Delete from courses WHERE id=2;

-- Inner Join 
-- Left Join
-- Right Join
-- Cross Join
-- Self Join
-- Full Join

SELECT s.id,s.name,s.email,c.name FROM students s Cross JOIN courses c;