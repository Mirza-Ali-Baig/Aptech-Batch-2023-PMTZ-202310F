## **Class 12: Temporary Tables, GUIDs, and Triggers in SQL** 🧑‍🏫

---

### 📚 **Topics Covered**
1. **Temporary Tables**  
2. **Local Temporary and Global Temporary Tables**  
3. **GUID (Globally Unique Identifier)**  
4. **Triggers**  
   - DML Triggers (INSERT, UPDATE, DELETE)  
   - DDL Triggers  
   - After and Instead of Triggers

---

### 📝 **Class Overview**

In this class, we cover the use of **temporary tables** for handling data that only needs to exist for the duration of a session or query execution, as well as **GUIDs** for generating globally unique identifiers. Additionally, we explore the concept of **triggers** in SQL, which are used to automatically execute a set of SQL statements when certain events occur on a table or view.

The key focus of this class includes:
- **Temporary Tables**: Local and global temporary tables and their scope.
- **GUID**: The creation and use of globally unique identifiers.
- **Triggers**: Both DML (Data Manipulation Language) and DDL (Data Definition Language) triggers for managing events in the database.

---

### 🌟 **Class Highlights**
- **Temporary Tables**: Learn how to create and use local and global temporary tables in SQL for managing session-specific data.
- **GUIDs**: Understand the importance and usage of `NEWID()` to generate globally unique identifiers.
- **Triggers**: Learn how to automate actions in your database using triggers, including logging changes to tables, preventing invalid updates, and handling data changes after events.

---

## 🗃️ **Database Structure**

### **Temporary Tables**
A **temporary table** is a table that exists temporarily on the database and is used for intermediate storage of data during query execution. There are two types:
1. **Local Temporary Tables**: Denoted by a single `#` prefix (e.g., `#TableName`), they are visible only within the session that created them and are automatically dropped when the session ends.
2. **Global Temporary Tables**: Denoted by a double `##` prefix (e.g., `##TableName`), they are visible to all sessions and are dropped when all sessions using the table are closed.

#### **Creating and Using a Local Temporary Table:**
```sql
CREATE TABLE #Students(
    ID VARCHAR(40) PRIMARY KEY DEFAULT NEWID(),
    NAME VARCHAR(30) NOT NULL
);

INSERT INTO #Students (NAME) VALUES ('Basit');

SELECT * FROM #Students;

-- Drop the temporary table when done
DROP TABLE #Students;

-- Attempting to query the dropped table will result in an error:
SELECT LEN(ID) FROM #Students; -- This will result in an error because the table no longer exists.
```

#### **Creating and Using a Global Temporary Table:**
```sql
CREATE TABLE ##Users(
    ID VARCHAR(40) PRIMARY KEY DEFAULT NEWID(),
    NAME VARCHAR(30) NOT NULL,
    EMAIL VARCHAR(50) NOT NULL UNIQUE,
    PASSWORD VARCHAR(60) NOT NULL
);
```

---

### **GUID (Globally Unique Identifier)**
GUID is a unique value used across systems, ensuring that the values are globally unique. In SQL, GUIDs are generated using the `NEWID()` function.

Example of creating and using a table with a `GUID` primary key:
```sql
CREATE TABLE Employees(
    id VARCHAR(40) PRIMARY KEY DEFAULT NEWID(),
    name VARCHAR(30) NOT NULL,
    Email VARCHAR(30) NOT NULL UNIQUE,
    Salary INT NOT NULL
);

-- Insert a record with a GUID primary key
INSERT INTO Employees (name, Email, Salary) 
VALUES ('Ali', 'ali@example.com', 50000);
```

---

### **Triggers in SQL**
Triggers are special types of stored procedures that are automatically executed (or "triggered") when a specific event occurs in the database. They can be used for automatic data validation, logging, or enforcing business rules.

#### **Types of Triggers:**
1. **DML Triggers** (Data Manipulation Language): Triggered by `INSERT`, `UPDATE`, or `DELETE` operations.
2. **DDL Triggers** (Data Definition Language): Triggered by DDL events such as `CREATE`, `ALTER`, `DROP`.

---

#### **Example 1: After Insert Trigger**
This trigger is fired after a new row is inserted into the `Employees` table.

```sql
CREATE TRIGGER TR_EmployeeInsert
ON Employees
AFTER INSERT
AS
BEGIN
    PRINT 'Employee Inserted Successfully !!';
    -- You can also select data from the `inserted` pseudo-table (which holds the newly inserted row)
    SELECT * FROM inserted;
END;

-- Inserting data into `Employees` table
INSERT INTO Employees (name, Email, Salary) 
VALUES ('Ahmed', 'ahmed@gmail.com', 55000);
```

#### **Example 2: Insert Trigger with Data Insertion**
This example demonstrates inserting a log into a secondary table (`EmployeesAdit`) every time a new employee is added.

```sql
CREATE TABLE EmployeesAdit(
    id VARCHAR(40) PRIMARY KEY DEFAULT NEWID(),
    emp_id VARCHAR(40),
    message VARCHAR(100),
    date DATE DEFAULT GETDATE(),
    FOREIGN KEY(emp_id) REFERENCES Employees(id)
);

CREATE TRIGGER TR_EmployeeInsert
ON Employees
AFTER INSERT
AS
BEGIN
    DECLARE @empId VARCHAR(40);
    -- Get the inserted employee ID
    SELECT @empId = id FROM inserted;

    -- Insert a log entry into the EmployeesAdit table
    INSERT INTO EmployeesAdit (emp_id, message)
    VALUES (@empId, 'New Employee in our Team');
END;

-- Inserting new employee will also insert a log into `EmployeesAdit`
INSERT INTO Employees (name, Email, Salary) 
VALUES ('Talha', 'talha@gmail.com', 45000);

-- View the audit log
SELECT * FROM EmployeesAdit;
```

#### **Example 3: After Update Trigger**
This trigger is fired after an update to an existing employee's data. It can be used for actions like logging updates or validating updated data.

```sql
CREATE TRIGGER TR_EmployeeUpdate
ON Employees
AFTER UPDATE
AS
BEGIN
    DECLARE @salary INT;
    SELECT @salary = Salary FROM inserted;
    
    -- Check if salary is updated
    IF UPDATE(Salary)
    BEGIN
        PRINT 'Employee salary has been updated!';
        SELECT @salary AS UpdatedSalary;
    END
END;

-- Update an employee's salary, which will trigger the update action
UPDATE Employees 
SET Salary = 60000 
WHERE id = '07EC3194-6806-4383-97A5-8DF7F3F6B4D2';
```

---

### **Date Formatting in SQL**
You can format the date in various formats using the `FORMAT()` function. For example, formatting the date in `YYYY-MM-DD` format:

```sql
SELECT id, emp_id, message, FORMAT(CAST([date] AS VARCHAR(40)), 'yyyy-MM-dd') AS formatted_date
FROM EmployeesAdit;
```

---

### 🎓 **Conclusion**

By the end of this class, you should be able to:
- Create and use **temporary tables** for session-specific data.
- Generate **GUIDs** for unique identifiers across systems.
- Define and use **triggers** to automate actions in response to data changes, such as logging insertions, updates, or enforcing business rules.
- Apply **date formatting** in SQL to handle different date formats as needed.

Triggers are a powerful tool for automating common tasks in your database, such as tracking changes or ensuring consistency across related tables. By using temporary tables, you can manage intermediate results without affecting permanent tables in the database.

