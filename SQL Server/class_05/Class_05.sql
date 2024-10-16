CREATE DATABASE pmtz_202310f_class_05;


CREATE TABLE employees
(
    id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL,
    department VARCHAR(30) NOT NULL
);

INSERT INTO employees
    (name, email, department)
VALUES
    ('Aisha Khan', 'aisha.khan@example.com', 'HR'),
    ('Bilal Ahmed', 'bilal.ahmed@example.com', 'Finance'),
    ('Sara Ali', 'sara.ali@example.com', 'IT'),
    ('Omer Farooq', 'omer.farooq@example.com', 'Marketing'),
    ('Zara Hussain', 'zara.hussain@example.com', 'Operations'),
    ('Hassan Raza', 'hassan.raza@example.com', 'Sales'),
    ('Fatima Malik', 'fatima.malik@example.com', 'HR'),
    ('Usman Shah', 'usman.shah@example.com', 'Finance'),
    ('Nadia Khan', 'nadia.khan@example.com', 'IT'),
    ('Ahmed Noor', 'ahmed.noor@example.com', 'Marketing'),
    ('Sadia Bukhari', 'sadia.bukhari@example.com', 'Operations'),
    ('Tariq Jamil', 'tariq.jamil@example.com', 'Sales'),
    ('Amna Sadiq', 'amna.sadiq@example.com', 'HR'),
    ('Farhan Ali', 'farhan.ali@example.com', 'Finance'),
    ('Mehreen Qureshi', 'mehreen.qureshi@example.com', 'IT'),
    ('Salman Ahmed', 'salman.ahmed@example.com', 'Marketing'),
    ('Naseem Anwar', 'naseem.anwar@example.com', 'Operations'),
    ('Kiran Shah', 'kiran.shah@example.com', 'Sales'),
    ('Adeel Khan', 'adeel.khan@example.com', 'HR'),
    ('Sophie Iqbal', 'sophie.iqbal@example.com', 'Finance'),
    ('Bilquis Noor', 'bilquis.noor@example.com', 'IT'),
    ('Wasiq Tariq', 'wasiq.tariq@example.com', 'Marketing'),
    ('Fariha Rafiq', 'fariha.rafiq@example.com', 'Operations'),
    ('Osman Qadir', 'osman.qadir@example.com', 'Sales'),
    ('Rida Ahmed', 'rida.ahmed@example.com', 'HR'),
    ('Ali Raza', 'ali.raza@example.com', 'Finance'),
    ('Hira Shah', 'hira.shah@example.com', 'IT'),
    ('Saif Ullah', 'saif.ullah@example.com', 'Marketing'),
    ('Zainab Malik', 'zainab.malik@example.com', 'Operations'),
    ('Rehan Khan', 'rehan.khan@example.com', 'Sales'),
    ('Sana Javed', 'sana.javed@example.com', 'HR'),
    ('Junaid Hashmi', 'junaid.hashmi@example.com', 'Finance');

SELECT *
from employees;


-- top

SELECT top 5
    *
FROM employees;

-- percent

SELECT top 10 percent
    *
from employees;

-- distinct

SELECT distinct department
from employees;


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

-- Create a View  

CREATE VIEW customers_orders
AS
SELECT o.id , o.total, p.title, p.description , c.name, c.email
FROM orders o JOIN customers c on o.customer_id=c.id
    join products p on o.product_id=p.id;


-- Use View

SELECT * from customers_orders;

SELECT name,email from customers_orders;



SELECT * from products order by price;

SELECT * from products WHERE price >100;

-- indexes