# **SQL Server - Class 03**

## 📚 **Topics Covered**  
- Database Creation  
- Table Creation with Constraints (`PRIMARY KEY`, `NOT NULL`, `UNIQUE`, `FOREIGN KEY`)  
- Data Insertion  
- `ON DELETE CASCADE` Behavior  
- SQL Joins (Inner, Left, Right, Cross, Self, Full)  
- Deleting Data with Foreign Key Constraints  

---

## 📄 **Class Overview**  
In this class, students practiced working with **multiple tables** in SQL Server, focusing on **foreign key relationships** and **joins**. They learned to create relationships between two tables and explored how operations such as **deleting data** affect tables with `ON DELETE CASCADE`. 

This session also introduced different types of **SQL joins** and their real-world applications to query data across related tables.

---

## 🛠️ **Database Structure**  
### **Database Name:**  
`pmtz_202310f_class3`

### **Tables:**  
1. **Courses**  
   Stores available courses.  
   
   | **Column** | **Data Type** | **Constraint**        | **Description**      |
   |------------|---------------|-----------------------|----------------------|
   | `id`       | INT           | PRIMARY KEY, IDENTITY | Unique course ID     |
   | `name`     | VARCHAR(30)   | NOT NULL              | Name of the course   |

2. **Students**  
   Stores students enrolled in courses.  

   | **Column**  | **Data Type** | **Constraint**                      | **Description**        |
   |-------------|---------------|-------------------------------------|------------------------|
   | `id`        | INT           | PRIMARY KEY, IDENTITY               | Unique student ID      |
   | `name`      | VARCHAR(30)   | NOT NULL                            | Student's name         |
   | `email`     | VARCHAR(30)   | NOT NULL, UNIQUE                    | Student's email        |
   | `course_id` | INT           | NOT NULL, FOREIGN KEY (courses.id)  | Course the student is enrolled in |

---

## 🚀 **SQL Queries Taught in Class**

### 1️⃣ **Database Creation**  
```sql
CREATE DATABASE pmtz_202310f_class3;
```

### 2️⃣ **Table Creation**  
**Courses Table:**
```sql
CREATE TABLE courses (
    id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(30) NOT NULL
);
```

**Students Table:**
```sql
CREATE TABLE students (
    id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL UNIQUE,
    course_id INT NOT NULL,
    FOREIGN KEY (course_id) REFERENCES courses(id) ON DELETE CASCADE
);
```

### 3️⃣ **Insert Data**  

**Insert Courses:**
```sql
INSERT INTO courses (name) 
VALUES ('PHP'), ('Laravel'), ('Javascript'), ('Python'), 
       ('Java'), ('Rust'), ('Go'), ('Mojo');
```

**Insert Students:**
```sql
INSERT INTO students (name, email, course_id) 
VALUES ('Basit', 'basit@gmail.com', 2), 
       ('Zahid', 'zahid@gmail.com', 3), 
       ('Sajid', 'sajid@gmail.com', 1);
```

### 4️⃣ **Join Queries**

**Left Join:** Retrieve students along with the courses they are enrolled in.
```sql
SELECT s.id, s.name, s.email, c.name AS course_name 
FROM students s 
LEFT JOIN courses c ON s.course_id = c.id;
```

**Cross Join:** Retrieve every possible combination of students and courses.
```sql
SELECT s.id, s.name, s.email, c.name AS course_name 
FROM students s 
CROSS JOIN courses c;
```

---

## 🧹 **Delete Operation with `ON DELETE CASCADE`**  
When deleting a record from the `courses` table, any related records in the `students` table are also removed due to the **foreign key constraint** with `ON DELETE CASCADE`.

```sql
DELETE FROM courses WHERE id = 2;
```
The student enrolled in course `Laravel` (ID: 2) will also be deleted.

---

## 🔄 **Types of Joins Explained**

- **Inner Join:** Returns rows with matching values in both tables.  
- **Left Join:** Returns all rows from the left table, with matching rows from the right table (or NULL).  
- **Right Join:** Returns all rows from the right table, with matching rows from the left table (or NULL).  
- **Cross Join:** Returns the Cartesian product of both tables.  
- **Self Join:** Joins a table with itself.  
- **Full Join:** Returns all rows when there is a match in either of the tables.

---

## 📦 **Class Highlights**

- **Foreign Key Relationships:** Establishing relationships between tables using `FOREIGN KEY`.  
- **Cascade Delete:** Automatic deletion of related records with `ON DELETE CASCADE`.  
- **Joins:** Exploring different types of joins for querying related tables.  
- **Data Manipulation:** Practical use of SQL operations to insert, query, and delete records.  

---

## 💡 **Conclusion**  
This class provided students with an understanding of how to work with multiple tables, create relationships using foreign keys, and perform operations that affect related data. The hands-on experience with various SQL joins prepared students for more complex database queries in future sessions.

---

## 💬 **Contact**  
- **GitHub:** [Mirza Ali Baig](https://github.com/Mirza-Ali-Baig)  
- **Email:** mirzaalibaig0714@gmail.com  
---