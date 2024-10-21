# **SQL Server - Class 02**

## 📚 **Topics Covered**  
- Database Creation  
- Table Creation with Constraints (`PRIMARY KEY`, `NOT NULL`, `UNIQUE`, `DEFAULT`)  
- Data Insertion  
- CRUD Operations (Create, Read, Update, Delete)  
- Using `TRUNCATE`  
- Filtering Data using Relational and Logical Operators  

---

## 📄 **Class Overview**  
This class focuses on building a **Student Management System** using SQL Server. Students learned how to create and manage a database, define tables with constraints, and perform essential SQL operations such as inserting, updating, deleting, and querying data. The exercises emphasize the practical use of relational and logical operators to filter data effectively. 

---

## 🛠️ **Database Structure**  
### **Database Name:**  
`pmtz_202310f_class2`

### **Table:** `students`  
Stores information about students with the following structure:

| **Column** | **Data Type** | **Constraint**            | **Description**                 |
|------------|---------------|----------------------------|---------------------------------|
| `id`       | INT           | PRIMARY KEY, IDENTITY(1,1) | Unique student ID              |
| `name`     | VARCHAR(100)  | NOT NULL                   | Student's full name            |
| `email`    | VARCHAR(100)  | NOT NULL, UNIQUE           | Student's unique email address |
| `age`      | INT           | NOT NULL                   | Student's age                  |
| `city`     | VARCHAR(30)   | DEFAULT 'Karachi'          | Student's city (default: Karachi) |

---

## 🚀 **SQL Queries Taught in Class**

### 1️⃣ **Database Creation**  
```sql
CREATE DATABASE pmtz_202310f_class2;
```

### 2️⃣ **Table Creation**  
```sql
CREATE TABLE students (
    id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    age INT NOT NULL,
    city VARCHAR(30) NOT NULL DEFAULT 'Karachi'
);
```

### 3️⃣ **Insert Data**  
```sql
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
```

### 4️⃣ **View Data**  
```sql
SELECT * FROM students;
```

### 5️⃣ **Update Data**  
```sql
UPDATE students SET name = 'Rizwan', email = 'rizwan@gmil.com' WHERE id = 7;
```

### 6️⃣ **Delete Data**  
```sql
DELETE FROM students WHERE name = 'Sam Young';
```

### 7️⃣ **Truncate Table**  
```sql
TRUNCATE TABLE students;
```

---

## 🧪 **Relational and Logical Operators in Queries**

### **Relational Operators:**  
- `<`, `>`, `=`, `>=`, `<=`, `!=`

### **Logical Operators:**  
- `AND`, `OR`, `NOT`

### **Example Queries:**

**Find students under the age of 20:**  
```sql
SELECT * FROM students WHERE age < 20;
```

**Find students whose age is not equal to 20:**  
```sql
SELECT * FROM students WHERE age != 20;
```

---

## 📦 **Class Highlights**

- **Database Creation:** Structured student data management using SQL Server.  
- **Constraints:** Implementing `PRIMARY KEY`, `NOT NULL`, `UNIQUE`, and `DEFAULT`.  
- **CRUD Operations:** Hands-on practice with creating, reading, updating, and deleting records.  
- **Data Filtering:** Utilizing relational and logical operators to retrieve specific results.  
- **Truncation:** Difference between `DELETE` and `TRUNCATE` operations.  

---

## 💡 **Conclusion**  
This class provided students with practical knowledge of SQL Server by focusing on key concepts such as table constraints and data operations. The hands-on tasks prepared them to efficiently manage data and apply SQL operations to solve real-world problems. This session also highlighted the importance of proper filtering with relational and logical operators, essential for advanced data queries.

---

## 💬 **Contact**  
- **GitHub:** [Mirza Ali Baig](https://github.com/Mirza-Ali-Baig)  
- **Email:** mirzaalibaig0714@gmail.com  
