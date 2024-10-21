# **SQL Server - Class 06**

## 📚 **Topics Covered**  
- Creating and Managing Stored Procedures  
- Inserting Data into Multiple Tables  
- Using `JOIN` for Data Retrieval  
- Implementing Subqueries in SQL  
- Understanding Data Types and Constraints  
- Working with Foreign Key Relationships  
- Advanced Data Manipulation Techniques  

---

## 📄 **Class Overview**  
In this class, students learned how to create and use stored procedures for data manipulation, including adding customers and products. They also practiced retrieving order details using joins and developed subqueries to find specific data points. Students explored various data types and the importance of constraints in table creation and management.

---

## ✨ **Class Highlights**  
- **Hands-On Experience:** Students engaged in practical exercises to reinforce learning, including creating and manipulating databases and tables.
- **Real-World Scenarios:** The use of customer orders and employee management as case studies to illustrate the importance of SQL in business applications.
- **Stored Procedures:** Students created and executed stored procedures, learning how to encapsulate complex queries for easier reuse and management.
- **Subqueries & Joins:** Focused on advanced query techniques, students learned to retrieve and manipulate data efficiently using subqueries and joins.
- **Team Collaboration:** Encouraged teamwork during exercises, fostering a collaborative learning environment where students helped each other debug and optimize SQL queries.
- **Feedback Session:** At the end of the class, a brief feedback session allowed students to share their learning experiences and clarify any doubts.

---

## 🛠️ **Database Structure**  

### **Database Name:**  
`pmtz_202310f_class_06`

### **Tables and Descriptions:**  

1. **customers**  
   Stores customer information.  
   | **Column** | **Data Type** | **Constraint**        | **Description**           |
   |------------|---------------|-----------------------|---------------------------|
   | `id`       | INT           | PRIMARY KEY, IDENTITY | Unique customer ID        |
   | `name`     | VARCHAR(30)   | NOT NULL              | Customer's name           |
   | `email`    | VARCHAR(30)   | NOT NULL, UNIQUE      | Customer's email          |

2. **products**  
   Stores product details.  
   | **Column**   | **Data Type**    | **Constraint**        | **Description**                |
   |--------------|------------------|-----------------------|--------------------------------|
   | `id`         | INT              | PRIMARY KEY, IDENTITY | Unique product ID              |
   | `title`      | VARCHAR(100)     | NOT NULL              | Product name                   |
   | `description`| NVARCHAR(500)    | NOT NULL              | Product description            |
   | `price`      | INT              |                       | Product price                  |
   | `quantity`   | INT              |                       | Available stock quantity       |

3. **orders**  
   Stores order information linking customers and products.  
   | **Column**     | **Data Type** | **Constraint**            | **Description**        |
   |----------------|---------------|---------------------------|------------------------|
   | `id`           | INT           | PRIMARY KEY, IDENTITY     | Unique order ID        |
   | `customer_id`  | INT           | FOREIGN KEY (customers)   | Customer making the order |
   | `product_id`   | INT           | FOREIGN KEY (products)    | Product being ordered  |
   | `total`        | INT           |                           | Total price of the order|

4. **employees**  
   Stores employee details.  
   | **Column** | **Data Type** | **Constraint**        | **Description**          |
   |------------|---------------|-----------------------|--------------------------|
   | `id`       | INT           | PRIMARY KEY, IDENTITY | Unique employee ID       |
   | `name`     | VARCHAR(30)   | NOT NULL              | Employee's name          |
   | `email`    | VARCHAR(30)   | NOT NULL              | Employee's email         |
   | `department`| VARCHAR(30)   | NOT NULL              | Department of the employee|
   | `salary`    | INT           | NOT NULL              | Employee's salary        |

---

## 🚀 **SQL Queries Taught in Class**  

### **1️⃣ Create the Database**  
```sql
CREATE DATABASE pmtz_202310f_class_06;
USE pmtz_202310f_class_06;
```

### **2️⃣ Create the Tables**  
```sql
CREATE TABLE customers (
    id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE products (
    id INT PRIMARY KEY IDENTITY(1,1),
    title VARCHAR(100) NOT NULL,
    description NVARCHAR(500) NOT NULL,
    price INT,
    quantity INT
);

CREATE TABLE orders (
    id INT PRIMARY KEY IDENTITY(1,1),
    customer_id INT,
    product_id INT,
    total INT,
    FOREIGN KEY(customer_id) REFERENCES customers(id) ON DELETE CASCADE,
    FOREIGN KEY(product_id) REFERENCES products(id) ON DELETE CASCADE
);
```

### **3️⃣ Insert Sample Data into `customers`**  
```sql
INSERT INTO customers (name, email) VALUES 
('Kabeer', 'kabeer@gmail.com'),
('Sajid', 'Sajid@gmail.com'),
('Hassam', 'Hassam@gmail.com'),
('Basit', 'Basit@gmail.com');
```

### **4️⃣ Insert Sample Data into `products`**  
```sql
INSERT INTO products (title, description, price, quantity) VALUES 
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
```

### **5️⃣ Insert Sample Data into `orders`**  
```sql
INSERT INTO orders (customer_id, product_id, total) VALUES 
(4, 5, 399),
(1, 5, 399),
(2, 2, 799),
(2, 7, 129);
```

### **6️⃣ Retrieve Order Details Using Joins**  
```sql
SELECT o.id, o.total, p.title, p.description, c.name, c.email
FROM orders o 
JOIN customers c ON o.customer_id = c.id
JOIN products p ON o.product_id = p.id;
```

### **7️⃣ Create Stored Procedure for Customer Orders**  
```sql
CREATE PROCEDURE customer_orders
@id INT
AS
BEGIN
    SELECT o.id, o.total, p.title, p.description, c.name, c.email
    FROM orders o 
    JOIN customers c ON o.customer_id = c.id
    JOIN products p ON o.product_id = p.id 
    WHERE c.id = @id;
END;
```
**Execute the procedure:**  
```sql
EXEC customer_orders @id = 3;
```

### **8️⃣ Create Stored Procedure to Add Customer**  
```sql
CREATE PROCEDURE addCustomer 
@name VARCHAR(30),
@email VARCHAR(30)
AS 
BEGIN
    INSERT INTO customers (name, email) VALUES (@name, @email); 
END;
```
**Execute the procedure:**  
```sql
EXEC addCustomer @name='kashif', @email='kashif@gmail.com';
SELECT * FROM customers;
```

### **9️⃣ Create Stored Procedure to Add Product**  
```sql
CREATE PROCEDURE addProducts 
@title VARCHAR(100),
@description TEXT,
@price INT,
@quantity INT
AS 
BEGIN
    INSERT INTO products(title, description, price, quantity)
    VALUES (@title, @description, @price, @quantity); 
END;
```
**Execute the procedure:**  
```sql
EXEC addProducts @title='iPhone 16', @description='Latest model of Apple iPhone', @price=300, @quantity=10;
SELECT * FROM products;
```

### **🔟 Insert New Orders**  
```sql
INSERT INTO orders (customer_id, product_id, total) VALUES 
(6, 15, 399),
(4, 19, 399),
(3, 21, 799),
(2, 7, 129);
```

### **1️⃣1️⃣ Create and Populate Employees Table**  
```sql
CREATE TABLE employees (
    id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL,
    department VARCHAR(30) NOT NULL,
    salary INT NOT NULL
);

INSERT INTO employees (name, email, department, salary) VALUES
('Aisha Khan', 'aisha.khan@example.com', 'HR',

 30000),
('Bilal Ahmed', 'bilal.ahmed@example.com', 'Finance', 50000),
('Sara Ali', 'sara.ali@example.com', 'IT', 75000),
('Omer Farooq', 'omer.farooq@example.com', 'Marketing', 60000),
('Zara Hussain', 'zara.hussain@example.com', 'Operations', 80000),
('Hassan Raza', 'hassan.raza@example.com', 'Sales', 20000),
('Fatima Malik', 'fatima.malik@example.com', 'HR', 45000),
('Usman Shah', 'usman.shah@example.com', 'Finance', 50000);
```

### **1️⃣2️⃣ Retrieve Maximum Salary**  
```sql
SELECT MAX(salary) FROM employees;
```

### **1️⃣3️⃣ Subqueries Example**  
```sql
SELECT TOP 1 * FROM employees WHERE salary < 80000 ORDER BY salary DESC;

-- Using Subquery
SELECT MAX(salary) FROM employees WHERE salary < (SELECT MAX(salary) FROM employees);
```

### **1️⃣4️⃣ Using IN and ANY**  
```sql
SELECT * FROM employees WHERE department = ANY (SELECT department FROM employees WHERE department = 'HR' OR department = 'Marketing');
```

---

## 🏁 **Conclusion**  
This class provided hands-on experience with SQL Server's capabilities, focusing on data insertion, retrieval, and procedure management. Students practiced using joins and subqueries, which are essential for efficient data manipulation and retrieval in real-world applications.

