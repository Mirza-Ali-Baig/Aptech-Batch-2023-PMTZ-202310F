# **SQL Server - Class 04**

## 📚 **Topics Covered**  
- Database Creation  
- Table Creation with Constraints (`PRIMARY KEY`, `NOT NULL`)  
- Data Insertion  
- `SELECT` Queries with `WHERE`  
- Aggregate Functions: `COUNT`, `SUM`, `MAX`, `MIN`, `AVG`  
- Grouping Results with `GROUP BY`  
- Filtering Groups with `HAVING`  

---

## 📄 **Class Overview**  
In this session, students practiced working with **aggregate functions** and explored **grouping data** using SQL queries. This class emphasized how to manipulate and retrieve summary data, such as **counting** the number of employees by department. Additionally, students learned to use the `HAVING` clause to filter grouped results.

---

## 🛠️ **Database Structure**  

### **Database Name:**  
`pmtz_202310f_class4`

### **Table:**  
1. **Employees**  
   Stores the details of employees and their respective departments.  

   | **Column**    | **Data Type** | **Constraint**        | **Description**        |
   |---------------|---------------|-----------------------|------------------------|
   | `id`          | INT           | PRIMARY KEY, IDENTITY | Unique employee ID     |
   | `name`        | VARCHAR(30)   | NOT NULL              | Employee's name        |
   | `email`       | VARCHAR(30)   | NOT NULL              | Employee's email       |
   | `department`  | VARCHAR(30)   | NOT NULL              | Employee's department  |

---

## 🚀 **SQL Queries Taught in Class**

### 1️⃣ **Database Creation**  
```sql
CREATE DATABASE pmtz_202310f_class4;
```

### 2️⃣ **Table Creation**  
```sql
CREATE TABLE employees (
    id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL,
    department VARCHAR(30) NOT NULL
);
```

### 3️⃣ **Insert Data**  
```sql
INSERT INTO employees (name, email, department) VALUES
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
```

---

## 🔍 **SQL Queries for Practice**

### **1. Retrieve All Employees**  
```sql
SELECT * FROM employees;
```

### **2. Filter Employees by Department**  
```sql
SELECT * FROM employees WHERE department = 'HR';
```

### **3. Count Employees in a Specific Department**  
```sql
SELECT COUNT(department) AS number_of_employees 
FROM employees WHERE department = 'HR';
```

### **4. Group Employees by Department**  
```sql
SELECT COUNT(department) AS number, department 
FROM employees GROUP BY department;
```

### **5. Filter Grouped Results Using `HAVING`**  
Show only departments with more than 5 employees.  
```sql
SELECT COUNT(department) AS number, department 
FROM employees GROUP BY department 
HAVING COUNT(*) > 5;
```

---

## 🧮 **Aggregate Functions Practiced**
- **COUNT()** – Count the number of rows or items.
- **SUM()** – Calculate the sum of values.
- **MAX()** – Find the maximum value.
- **MIN()** – Find the minimum value.
- **AVG()** – Calculate the average value.

---

## 📦 **Class Highlights**
- **Data Filtering:** Using `WHERE` to filter results.
- **Grouping Data:** Using `GROUP BY` to group data by specific columns.
- **Filtering Groups:** Utilizing `HAVING` to filter grouped data.
- **Aggregate Functions:** Understanding the power of `COUNT`, `SUM`, `MAX`, `MIN`, and `AVG`.

---

## 💡 **Conclusion**
This class gave students an in-depth understanding of how to use **aggregate functions**, **grouping**, and **filtering** grouped results in SQL Server. These concepts are essential for working with large datasets and performing data analysis efficiently.

---

## 💬 **Contact**  
- **GitHub:** [Mirza-Ali-Baig](https://github.com/Mirza-Ali-Baig)  
- **Email:** [mirzaalibaig0714@gmail.com](mailto:mirzaalibaig0714@gmail.com)  
