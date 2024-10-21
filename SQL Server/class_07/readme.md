# **SQL Server - Class 07**

## 📚 **Topics Covered**  
- ALTER Commands (Add, Drop, Modify Columns)  
- Constraints (Primary Key, Unique)  
- Renaming Columns, Tables, and Databases  
- Creating and Calling Views  
- SQL Variables and Parameters  
- Creating and Executing Stored Procedures  
- Output Parameters in SQL Server  

---

## ✨ **Class Highlights**  
- **Practical Learning:** Students engaged in interactive sessions, practicing how to manage tables by adding, dropping, and modifying columns.  
- **Hands-On Practice with Constraints:** Students learned how to implement constraints like `UNIQUE` to ensure data integrity in real scenarios.  
- **Dynamic SQL Views:** They created and modified views to retrieve specific sets of data.  
- **Stored Procedures:** Focused on creating stored procedures with both input and output parameters, showcasing SQL’s power in reusable query management.  
- **Use of SQL Variables:** Students learned how to declare and manipulate variables within SQL, enhancing their query flexibility.  
- **Collaborative Debugging:** Students worked in teams to resolve syntax errors and optimize their SQL queries.  
- **End-of-Class Review:** A feedback session allowed students to clarify doubts and reflect on their learning experience.

---

## 📄 **Class Overview**  
In this class, students explored the power of SQL in managing table structures, including adding, dropping, and modifying columns dynamically. They practiced using constraints like `UNIQUE` and learned how to rename columns, tables, and even databases. Views were introduced as a way to encapsulate complex queries, and students created stored procedures with both input and output parameters. 

---

## 🛠️ **Database Structure**  

### **Database Name:**  
`pmtz_202310f_class_07`

### **Tables and Descriptions:**  

1. **customers**  
   Stores customer information.  
   | **Column** | **Data Type** | **Constraint**        | **Description**           |
   |------------|---------------|-----------------------|---------------------------|
   | `id`       | INT           | PRIMARY KEY, IDENTITY | Unique customer ID        |
   | `username` | VARCHAR(30)   | NOT NULL              | Customer's username       |
   | `email`    | VARCHAR(70)   | UNIQUE                | Customer's email          |

---

## 🚀 **SQL Queries Taught in Class**  

### **1️⃣ Create the Database and Use It**  
```sql
CREATE DATABASE pmtz_202310f_class_07;
USE pmtz_202310f_class_07;
```

### **2️⃣ Create the `customers` Table**  
```sql
CREATE TABLE customers (
    id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(30) NOT NULL
);
```

---

## 🛠️ **ALTER Commands**  

### **3️⃣ Add Columns to the Table**  
```sql
ALTER TABLE customers ADD email VARCHAR(30);
ALTER TABLE customers ADD address VARCHAR(60);
```

### **4️⃣ Drop a Column**  
```sql
ALTER TABLE customers DROP COLUMN address;
```

### **5️⃣ Modify a Column’s Data Type**  
```sql
ALTER TABLE customers ALTER COLUMN email VARCHAR(70);
ALTER TABLE customers ADD CONSTRAINT cu_email UNIQUE(email);
```

---

## 🛠️ **Inserting and Manipulating Data**  

### **6️⃣ Insert Data into `customers` Table**  
```sql
INSERT INTO customers (name, email) 
VALUES ('Basit', 'basit@gmail.com');
```

### **7️⃣ Remove a Constraint**  
```sql
ALTER TABLE customers DROP CONSTRAINT cu_email;
```

---

## 🛠️ **Renaming Columns and Tables**  

### **8️⃣ Rename a Column**  
```sql
EXEC sp_rename 'customers.name', 'username', 'COLUMN';
```

### **9️⃣ Rename the Table**  
```sql
EXEC sp_rename 'customers', 'users';
```

### **🔟 Select Data from the Renamed Table**  
```sql
SELECT * FROM users;
```

---

## 🛠️ **Renaming a Database**  
```sql
EXEC sp_renamedb 'pmtz_202310f_class_07', 'new_db';
```

---

## 🛠️ **Working with Views**  

### **1️⃣1️⃣ Create a View**  
```sql
CREATE VIEW User_Info AS
SELECT * FROM users;
```

### **1️⃣2️⃣ Retrieve Data from the View**  
```sql
SELECT * FROM User_Info;
SELECT username FROM User_Info;
```

### **1️⃣3️⃣ Modify the View**  
```sql
ALTER VIEW User_Info AS
SELECT * FROM users WHERE id = 1;
```

---

## 🛠️ **SQL Variables and Parameters**  

### **1️⃣4️⃣ Declare Variables and Set Values**  
```sql
DECLARE @name VARCHAR(20); 
DECLARE @age INT;

SET @name = 'Sajid';
SET @age = 20;

SELECT @name AS 'Name', @age AS 'Age';
```

### **1️⃣5️⃣ Using Variables to Store Query Results**  
```sql
DECLARE @id INT, @username VARCHAR(40), @email VARCHAR(30);

SELECT @id = id, @username = username, @email = email FROM users;

SELECT @id AS 'ID', @username AS 'Username', @email AS 'Email';
```

---

## 🛠️ **Creating and Using Stored Procedures**  

### **1️⃣6️⃣ Stored Procedure with Output Parameter**  
```sql
CREATE PROCEDURE Get_Email 
    @id INT, 
    @email VARCHAR(30) OUTPUT
AS
BEGIN
    SELECT @email = email FROM users WHERE id = @id;
END;
```

**Execute the Procedure:**  
```sql
DECLARE @email VARCHAR(30);
EXEC Get_Email @id = 1, @email = @email OUTPUT;

SELECT @email AS 'Email';
```

---

## 🏁 **Conclusion**  
This class introduced students to dynamic table management with ALTER commands and practical applications of SQL views. They gained hands-on experience with SQL variables and learned to encapsulate logic in stored procedures with input and output parameters. By renaming columns and tables, students practiced managing database schemas efficiently, gaining skills essential for real-world SQL development.