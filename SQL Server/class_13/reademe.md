# **Class 13: Triggers and Advanced SQL Concepts** 🧑‍🏫

---

## 📚 **Topics Covered**
- Triggers in SQL
- DML Triggers (AFTER, INSTEAD OF)
- DDL Triggers
- LOGON / LOGOFF Triggers

---

## 📝 **Class Overview**
This class is dedicated to understanding **SQL Triggers** and their role in automating tasks and maintaining data integrity within a database. A **trigger** is a special type of stored procedure that automatically executes or fires when certain events occur in the database.

In this class, we cover the following:
1. **DML Triggers**: These triggers fire after **Insert**, **Update**, or **Delete** operations on a table.
2. **DDL Triggers**: These triggers are invoked in response to **Data Definition Language (DDL)** events like **CREATE**, **ALTER**, and **DROP** statements.
3. **LOGON/LOGOFF Triggers**: These triggers fire when a user logs in or logs off from the SQL Server.

By the end of this class, you will understand how to write and use triggers effectively for data auditing, enforcing business rules, and preventing certain actions.

---

## 🌟 **Class Highlights**
- **Understanding Trigger Events**: Learn how to create triggers for various SQL operations (INSERT, UPDATE, DELETE).
- **Auditing with Triggers**: Use triggers to track changes and record the audit trail.
- **Preventing Unauthorized Operations**: Learn how to prevent table creation and other unauthorized changes using DDL triggers.
- **Data Integrity**: Use triggers to enforce business rules like rejecting entries with low salaries.
- **Hands-on Practice**: Apply your learning with real-world examples and sample data.

---

## 🗃️ **Database Structure**
The class uses a simple employee management system with tables to demonstrate the functionality of various triggers.

### **Employees Table**
Stores the basic information of employees.
```sql
CREATE TABLE Employees (
    id VARCHAR(40) PRIMARY KEY DEFAULT NEWID(),
    name VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL UNIQUE,
    salary INT NOT NULL
);
```

### **EmployeesAdit Table**
Tracks the changes (like salary updates or deletions) made to the `Employees` table.
```sql
CREATE TABLE EmployeesAdit (
    id VARCHAR(40) PRIMARY KEY DEFAULT NEWID(),
    emp_id VARCHAR(40),
    message VARCHAR(100),
    date DATE DEFAULT GETDATE(),
    FOREIGN KEY(emp_id) REFERENCES Employees(id)
);
```

---

## 🧑‍💻 **SQL Queries Taught in Class**

Here are some key SQL queries and triggers demonstrated in this class:

### 1. **Inserting Data into Employees**
```sql
INSERT INTO Employees (name, email, salary) 
VALUES ('Khan', 'khan@gmail.com', 50000),
       ('Ahmed', 'ahmed@gmail.com', 55000),
       ('Talha', 'talha@gmail.com', 45000);
```

### 2. **Creating a Trigger for After Update (Employee Salary Update)**
This trigger fires after an update on the `Employees` table and logs the change in `EmployeesAdit`.
```sql
CREATE TRIGGER TR_EmployeeUpdate
ON Employees
AFTER UPDATE
AS
BEGIN
    DECLARE @newSalary INT, @oldSalary INT, @empId VARCHAR(40);
    -- Get Employee New Salary
    SELECT @newSalary = Salary, @empId = id FROM inserted;
    -- Get Employee Old Salary
    SELECT @oldSalary = Salary FROM deleted;
    
    IF UPDATE(salary)
    BEGIN
        INSERT INTO EmployeesAdit (emp_id, message)
        VALUES (@empId, 'Employee Salary Has Been Updated. Old Salary: ' 
            + CAST(@oldSalary AS VARCHAR(50)) 
            + ' New Salary: ' + CAST(@newSalary AS VARCHAR(50)));
    END
END
```

### 3. **Trigger for After Delete (Employee Removal)**
This trigger records a message in `EmployeesAdit` when an employee is deleted.
```sql
CREATE TRIGGER TR_EmployeeDelete
ON Employees
AFTER DELETE
AS
BEGIN
    DECLARE @empId VARCHAR(40);
    SELECT @empId = id FROM deleted;
    INSERT INTO EmployeesAdit (emp_id, message) 
    VALUES (@empId, 'Employee Has Been Removed');
END
```

### 4. **Trigger for Inserting Employees with Salary > 20,000**
This **INSTEAD OF** trigger ensures only employees with a salary greater than 20,000 are inserted into the `Employees` table.
```sql
CREATE TRIGGER TR_EmployeeInsert
ON Employees
INSTEAD OF INSERT
AS
BEGIN
    INSERT INTO Employees(id, name, email, salary)
    SELECT id, name, email, salary FROM inserted WHERE salary >= 20000;
END
```

### 5. **Prevent Table Creation with a DDL Trigger**
This **DDL trigger** prevents users from creating new tables in the database.
```sql
CREATE TRIGGER TR_OnTable_Create
ON DATABASE
FOR CREATE_TABLE
AS
BEGIN
    PRINT 'YOU CANNOT CREATE A TABLE IN THIS DATABASE';
    ROLLBACK TRANSACTION;
END
```

---

## 🎓 **Conclusion**
In this class, you learned how to work with SQL Triggers to automate operations, ensure data integrity, and enhance security in your database applications. By implementing **DML triggers**, you can monitor changes like updates, deletions, and insertions in the database. With **DDL triggers**, you can prevent certain actions such as creating new tables or altering database structures.

**Key Takeaways**:
- Understand and write **DML** triggers (AFTER, INSTEAD OF) to track and enforce rules on data changes.
- Implement **DDL** triggers to control database structure changes.
- Use **LOGON/LOGOFF** triggers for user-specific operations (covered in the class but not explicitly detailed in the code).

As you continue to practice, consider using triggers to improve the automation and security of your database-driven applications. 🔒💼
