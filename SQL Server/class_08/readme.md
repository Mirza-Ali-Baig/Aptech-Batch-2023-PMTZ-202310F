# **Class 08: System Functions & Custom Functions in SQL** 🧑‍🏫

---

## 📚 **Topics Covered**
- System Functions
- Custom Functions  
  - Scalar Functions
  - Inline Table Functions
  - Multiline Table Functions
- String Functions
- Date & Time Functions
- Indexes in SQL

---

## 📝 **Class Overview**
This class introduces essential SQL concepts focusing on both **System Functions** and **Custom Functions**. The course covers a wide range of topics, including how to write custom functions (scalar, inline, and multiline table functions) to solve real-world database problems. Additionally, students will explore string functions, date/time functions, and learn about the use of indexes to improve query performance.

By the end of this class, you'll be able to:
1. Leverage **system functions** to retrieve metadata, perform string operations, and manipulate dates.
2. Create **scalar functions** to perform reusable operations that return a single value.
3. Implement **inline and multiline table functions** to return datasets based on custom logic.
4. Understand how **indexes** improve the performance of database queries.

---

## 🌟 **Class Highlights**
- **Hands-on Function Creation**: Learn how to build and modify scalar, inline, and multiline table functions.
- **String and Date Functions**: Discover how to manipulate and analyze text and time-related data.
- **Efficient Querying**: Understand how to use indexes to optimize database queries.
- **Real-World Use Cases**: Apply these concepts in managing student data, performing complex queries, and solving business problems.

---

## 🗃️ **Database Structure**

### **Students Table**
The `Students` table is used to store information about students, including their first and last names, email, phone, and grade.

```sql
CREATE TABLE Students(
    id INT PRIMARY KEY IDENTITY(1,1),
    firstName VARCHAR(30),
    lastName VARCHAR(30),
    email VARCHAR(30),
    phone VARCHAR(20),
    class VARCHAR(40)
);
```

### **Employees Table**
The `Employees` table is created to demonstrate indexing functionality, storing basic information about employees including their name, email, and salary.

```sql
CREATE TABLE employees(
    id INT PRIMARY KEY,
    name VARCHAR(20),
    email VARCHAR(30),
    salary INT
);
```

---

## 🧑‍💻 **SQL Queries Taught in Class**

### 1. **System Functions Example: LEN (String Length)**
```sql
SELECT LEN(firstName) AS length, firstName FROM Students;
```
This query uses the `LEN()` function to calculate the length of a student's first name.

### 2. **Custom Scalar Function: Addition**
A custom scalar function that returns the sum of two numbers.
```sql
CREATE FUNCTION addition()
RETURNS INT
AS
BEGIN
    RETURN 5 + 5;
END;

-- Calling the Function
SELECT dbo.addition();
```

### 3. **Modified Scalar Function with Parameters**
This function now takes two parameters and returns their sum.
```sql
ALTER FUNCTION addition(@num1 INT, @num2 INT)
RETURNS INT
AS
BEGIN
    RETURN @num1 + @num2;
END;

-- Calling the Function with parameters
SELECT dbo.addition(30, 50) AS 'Addition';
```

### 4. **Inline Table Function: StudentEmail**
This function returns a table of student details based on their email address.
```sql
CREATE FUNCTION StudentEmail(@email VARCHAR(30))
RETURNS TABLE
AS
   RETURN (SELECT * FROM Students WHERE email = @email);

-- Calling the Function
SELECT * FROM StudentEmail('naveed.chaudhry@example.com');
```

### 5. **Multiline Table Function: GetStudentByID**
This function returns a table of student names by ID.
```sql
CREATE FUNCTION GetStudentByID(@id INT)
RETURNS @myTable TABLE (
    firstName VARCHAR(40), 
    lastName VARCHAR(40)
)
AS
BEGIN
    INSERT INTO @myTable (firstName, lastName)
    SELECT firstName, lastName 
    FROM Students 
    WHERE id = @id;

    RETURN;
END;

-- Calling the Function
SELECT firstName FROM GetStudentByID(1);
SELECT * FROM GetStudentByID(1);
```

### 6. **Indexes in SQL**
Indexes help speed up data retrieval. In this example, an index is created on the `salary` column of the `employees` table to optimize queries that filter or sort by salary.

```sql
CREATE INDEX IN_Salary ON employees (salary DESC);
```

---

## 🎓 **Conclusion**
By the end of this class, you’ve gained hands-on experience with various SQL functions, ranging from system functions to custom scalar, inline, and multiline table functions. You’ve also explored the concept of indexes and their role in improving query performance. These are powerful tools that you can leverage to create efficient, reusable, and maintainable SQL code for real-world applications.

### Key Takeaways:
- Understand and utilize **system functions** like `LEN`, `GETDATE()`, and others.
- Create and modify **scalar, inline, and multiline table functions**.
- Improve query performance with **indexes** on commonly queried columns.
- Perform efficient data manipulation and querying with **string functions** and **date/time functions**.

