# **SQL Server - Class 05**

## 📚 **Topics Covered**  
- Advanced **`SELECT`** queries (`TOP`, `PERCENT`, `DISTINCT`)
- Creating and Managing **Multiple Tables**  
- Using **Foreign Keys** for Table Relationships  
- **JOINs** for Data Retrieval Across Tables  
- **Views** to Simplify Queries  
- **ORDER BY** and Data Filtering with **WHERE**  
- Introduction to **Indexes**

---

## 📄 **Class Overview**  
In this class, students expanded their SQL knowledge by creating multiple tables with **foreign key constraints** and performing **joins** to retrieve related data. They also learned about **views** to store reusable queries, explored advanced `SELECT` features, and experimented with **ordering and filtering** data using `ORDER BY` and `WHERE`.

---

## 🛠️ **Database Structure**  

### **Database Name:**  
`pmtz_202310f_class_05`

### **Tables and Descriptions:**  

1. **employees**  
   Stores employee data.  
   | **Column**    | **Data Type** | **Constraint**        | **Description**        |
   |---------------|---------------|-----------------------|------------------------|
   | `id`          | INT           | PRIMARY KEY, IDENTITY | Unique employee ID     |
   | `name`        | VARCHAR(30)   | NOT NULL              | Employee's name        |
   | `email`       | VARCHAR(30)   | NOT NULL              | Employee's email       |
   | `department`  | VARCHAR(30)   | NOT NULL              | Department name        |

2. **customers**  
   Stores customer details.  
   | **Column** | **Data Type** | **Constraint**        | **Description**   |
   |------------|---------------|-----------------------|-------------------|
   | `id`       | INT           | PRIMARY KEY, IDENTITY | Unique customer ID|
   | `name`     | VARCHAR(30)   | NOT NULL              | Customer's name   |
   | `email`    | VARCHAR(30)   | UNIQUE, NOT NULL      | Customer's email  |

3. **products**  
   Stores product details.  
   | **Column**   | **Data Type**    | **Constraint**        | **Description**          |
   |--------------|------------------|-----------------------|--------------------------|
   | `id`         | INT              | PRIMARY KEY, IDENTITY | Unique product ID        |
   | `title`      | VARCHAR(100)     | NOT NULL              | Product name             |
   | `description`| NVARCHAR(500)    | NOT NULL              | Product description      |
   | `price`      | INT              |                       | Product price            |
   | `quantity`   | INT              |                       | Available stock quantity |

4. **orders**  
   Stores order information, linking customers and products.  
   | **Column**     | **Data Type** | **Constraint**            | **Description**        |
   |----------------|---------------|---------------------------|------------------------|
   | `id`           | INT           | PRIMARY KEY, IDENTITY     | Unique order ID        |
   | `customer_id`  | INT           | FOREIGN KEY (customers)   | Customer making the order |
   | `product_id`   | INT           | FOREIGN KEY (products)    | Product being ordered |
   | `total`        | INT           |                           | Total price of the order|

---

## 🚀 **SQL Queries Taught in Class**

### **1️⃣ Retrieve All Employees**  
```sql
SELECT * FROM employees;
```

### **2️⃣ Use of `TOP` Clause**  
Retrieve the first 5 employees:  
```sql
SELECT TOP 5 * FROM employees;
```

Retrieve 10% of employees:  
```sql
SELECT TOP 10 PERCENT * FROM employees;
```

### **3️⃣ Use of `DISTINCT`**  
Retrieve unique departments:  
```sql
SELECT DISTINCT department FROM employees;
```

### **4️⃣ Create and Insert Data into `customers` Table**  
```sql
INSERT INTO customers (name, email)  
VALUES ('Kabeer', 'kabeer@gmail.com'),  
       ('Sajid', 'Sajid@gmail.com'),  
       ('Hassam', 'Hassam@gmail.com'),  
       ('Basit', 'Basit@gmail.com');
```

### **5️⃣ Create and Insert Data into `products` Table**  
```sql
INSERT INTO products (title, description, price, quantity)  
VALUES ('iPhone 13', 'Latest model of Apple iPhone', 999, 20),  
       ('Samsung Galaxy S21', 'High-end Android smartphone', 799, 15),  
       ('Sony WH-1000XM4', 'Noise-canceling headphones', 349, 30);
```

### **6️⃣ Insert Data into `orders` Table**  
```sql
INSERT INTO orders (customer_id, product_id, total)  
VALUES (4, 5, 399),  
       (1, 5, 399),  
       (2, 2, 799),  
       (2, 7, 129);
```

### **7️⃣ Using `JOIN` to Retrieve Order Details**  
```sql
SELECT o.id, o.total, p.title, p.description, c.name, c.email  
FROM orders o  
JOIN customers c ON o.customer_id = c.id  
JOIN products p ON o.product_id = p.id;
```

### **8️⃣ Create a View to Store Orders Query**  
```sql
CREATE VIEW customers_orders AS  
SELECT o.id, o.total, p.title, p.description, c.name, c.email  
FROM orders o  
JOIN customers c ON o.customer_id = c.id  
JOIN products p ON o.product_id = p.id;
```

### **9️⃣ Use the View to Retrieve Data**  
```sql
SELECT * FROM customers_orders;
SELECT name, email FROM customers_orders;
```

### **🔟 Sort Products by Price**  
```sql
SELECT * FROM products ORDER BY price;
```

### **Use of `WHERE` Clause to Filter Products**  
```sql
SELECT * FROM products WHERE price > 100;
```

---

## 🧩 **Class Highlights**
- **`TOP` and `PERCENT`:** Select a limited number of rows or percentage of rows.  
- **`DISTINCT`:** Remove duplicate values from the result set.  
- **`JOINs`:** Retrieve data from multiple tables with foreign key relationships.  
- **`Views`:** Store reusable SQL queries for easier access.  
- **`ORDER BY`:** Sort data based on specific columns.  
- **`WHERE`:** Filter rows that meet certain conditions.

---

## 💡 **Concepts for Further Exploration**
- **Indexes:** Learn to speed up query performance using indexes.
- **ON DELETE CASCADE:** Understand how foreign keys handle data deletion across related tables.

---

## 💬 **Contact**  
- **GitHub:** [Mirza-Ali-Baig](https://github.com/Mirza-Ali-Baig)  
- **Email:** [mirzaalibaig0714@gmail.com](mailto:mirzaalibaig0714@gmail.com)  
