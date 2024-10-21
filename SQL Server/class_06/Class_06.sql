create DATABASE pmtz_202310f_class_06;

use pmtz_202310f_class_06;

create TABLE customers
(
    id int PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE products
(
    id int PRIMARY KEY IDENTITY(1,1),
    title VARCHAR(100) NOT NULL,
    description NVARCHAR(500) NOT NULL,
    price int,
    quantity int,
);

CREATE TABLE orders
(
    id int PRIMARY KEY IDENTITY(1,1),
    customer_id int,
    product_id int,
    total int,
    FOREIGN KEY(customer_id) REFERENCES customers(id) on DELETE CASCADE,
    FOREIGN KEY(product_id) REFERENCES products(id) on DELETE CASCADE
)

insert into customers
    (name,email)
VALUES
    ('Kabeer', 'kabeer@gmail.com'),
    ('Sajid', 'Sajid@gmail.com'),
    ('Hassam', 'Hassam@gmail.com'),
    ('Basit', 'Basit@gmail.com')

INSERT INTO products
    (title, description, price, quantity)
VALUES
    ('iPhone 13', 'Latest model of Apple iPhone', 999, 20),
    ('Samsung Galaxy S21', 'High-end Android smartphone', 799, 15),
    ('Sony WH-1000XM4', 'Noise-canceling headphones', 349, 30),
    ('Dell XPS 13', 'Powerful and lightweight laptop', 1199, 10),
    ('Apple Watch Series 7', 'Smartwatch with various health features', 399, 25),
    ('Nintendo Switch', 'Popular gaming console', 299, 40),
    ('Kindle Paperwhite', 'E-reader with a high-resolution display', 129, 35),
    ('GoPro HERO9', 'Action camera with incredible stabilization', 399, 12),
    ('Bose SoundLink Revolve', 'Portable Bluetooth speaker', 199, 25),
    ('Fitbit Charge 5', 'Advanced fitness tracker', 179, 30),
    ('Canon EOS R5', 'High-performance mirrorless camera', 3899, 8),
    ('Razer Blade 15', 'Gaming laptop with top-notch specs', 2399, 7),
    ('Dyson V11', 'Powerful cordless vacuum cleaner', 599, 20),
    ('iPad Pro', 'High-performance tablet with a stunning display', 1099, 18),
    ('Oculus Quest 2', 'All-in-one VR headset', 299, 22),
    ('Nespresso Vertuo', 'Coffee maker for delicious espresso and coffee', 199, 40),
    ('Instant Pot Duo', 'Multi-use pressure cooker', 89, 50),
    ('Sony PS5', 'Next-generation gaming console', 499, 10),
    ('Google Nest Hub', 'Smart display for your home', 99, 25),
    ('Anker PowerCore', 'Portable charger for your devices', 49, 35);



insert into orders
    (customer_id,product_id,total)
VALUES
    (4, 5, 399),
    (1, 5, 399),
    (2, 2, 799),
    (2, 7, 129);

SELECT o.id , o.total, p.title, p.description , c.name, c.email
FROM orders o JOIN customers c on o.customer_id=c.id
    join products p on o.product_id=p.id;



CREATE PROCEDURE customer_orders
@id int
AS
BEGIN
SELECT o.id , o.total, p.title, p.description , c.name, c.email
FROM orders o JOIN customers c on o.customer_id=c.id
    join products p on o.product_id=p.id WHERE c.id=@id;
END;


EXEC customer_orders @id=3;



CREATE PROCEDURE addCustomer 
@name VARCHAR(30),
@email VARCHAR(30)
AS 
BEGIN
    insert into customers (name,email) VALUES (@name,@email); 
END;


CREATE PROCEDURE addProducts 
@title VARCHAR(100),
@description TEXT,
@price int,
@quantity int
AS 
BEGIN
    insert into products(title,description,price,quantity)
	VALUES (@title,@description,@price,@quantity); 
END;

exec addCustomer @name='kashif',@email='kashif@gmail.com';

select * from customers;

exec addProducts @title='iPhone 16',@description='Latest model of Apple iPhone',@price=300,@quantity=10;

SELECT * from products;


insert into orders
    (customer_id,product_id,total)
VALUES
    (6, 15, 399),
    (4, 19, 399),
    (3, 21, 799),
    (2, 7, 129);


-- Sub Queries in SQL

CREATE TABLE employees (
    id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL,
    department VARCHAR(30) NOT NULL,
    salary int NOT null
);

INSERT INTO employees (name, email, department,salary) VALUES
('Aisha Khan', 'aisha.khan@example.com', 'HR',30000),
('Bilal Ahmed', 'bilal.ahmed@example.com', 'Finance',50000),
('Sara Ali', 'sara.ali@example.com', 'IT',75000),
('Omer Farooq', 'omer.farooq@example.com', 'Marketing',60000),
('Zara Hussain', 'zara.hussain@example.com', 'Operations',80000),
('Hassan Raza', 'hassan.raza@example.com', 'Sales',20000),
('Fatima Malik', 'fatima.malik@example.com', 'HR',45000),
('Usman Shah', 'usman.shah@example.com', 'Finance',50000);


select MAX(salary) FROM employees;


-- Solution 01

SELECT top 1 * FROM employees where salary < 80000 order by salary desc;

-- Solution 02
-- Using Sub query

SELECT MAX(salary) from employees WHERE salary < (SELECT MAX(salary) from employees);

-- =  <  > <= < >= !=


-- SELECT * from employees WHERE department='HR';

-- IN, ANY,ALL


SELECT * from employees WHERE department = any(select department from employees WHERE department='HR' or department ='Marketing');




