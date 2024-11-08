# **Class 11: Transactions in SQL** 🧑‍🏫

---

## 📚 **Topics Covered**
- What is a Transaction?
- Transaction Syntax
- Transaction Example: Deposit, Withdrawal, Transfer
- Stored Procedures for Financial Operations
- Functions for Account Balance and Transaction History
- Error Handling in Transactions
- COMMIT and ROLLBACK in SQL

---

## 📝 **Class Overview**
In this class, we explore **transactions** in SQL, which are used to ensure that a series of database operations are executed together successfully or not at all. If a part of the transaction fails, the entire sequence can be rolled back to maintain data consistency. You will learn how to work with SQL transactions to ensure data integrity in applications like banking systems, where money transfers, deposits, and withdrawals need to be handled securely and atomically.

We will also explore:
1. **Stored Procedures** for deposit, withdrawal, and transfer operations.
2. **Transaction Functions** to fetch account balances and customer details.
3. **Error Handling** to ensure the transaction is either committed or rolled back properly.

---

## 🌟 **Class Highlights**
- **Transactions**: Learn about the concept of transactions in SQL and how they guarantee data consistency.
- **Stored Procedures**: Create stored procedures for common banking operations like deposit, withdrawal, and transfers.
- **Functions**: Develop and use functions for retrieving account balances and customer details.
- **Error Handling**: Use `TRY...CATCH` blocks to handle errors during transactions and rollback in case of failure.
- **Referential Integrity**: Use foreign keys to maintain relationships between tables (e.g., between `Customers` and `Accounts`).

---

## 🗃️ **Database Structure**

### **Customers Table**
This table stores customer information such as their first and last names, email, phone number, and address.

```sql
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY (1,1),
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100) UNIQUE NOT NULL,
    Phone NVARCHAR(15),
    Address NVARCHAR(255),
    CreatedAt DATETIME DEFAULT GETDATE()
);
```

### **Accounts Table**
This table holds account details for each customer, including account type (e.g., savings, current) and balance.

```sql
CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY IDENTITY (1,1),
    CustomerID INT,
    AccountType NVARCHAR(20) NOT NULL, -- e.g., Savings, Current, Default
    Balance DECIMAL(10, 2) DEFAULT 0.00,
    CreatedAt DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (CustomerID) REFERENCES Customers (CustomerID) ON DELETE CASCADE
);
```

### **Transactions Table**
This table logs every financial transaction made by customers, such as deposits, withdrawals, or transfers.

```sql
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY IDENTITY (1,1),
    AccountID INT,
    TransactionDate DATETIME DEFAULT GETDATE(),
    Amount DECIMAL(10, 2) NOT NULL,
    TransactionType NVARCHAR(10) NOT NULL, -- e.g., Deposit, Withdrawal, Transfer
    FOREIGN KEY (AccountID) REFERENCES Accounts (AccountID) ON DELETE CASCADE
);
```

---

## 🧑‍💻 **SQL Queries Taught in Class**

### 1. **Transaction Functions**
Functions are used to get account balance and customer details.

#### **Get Account Balance**
```sql
CREATE FUNCTION dbo.FN_GetBalance(@accountID INT)
    RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @balance DECIMAL(10, 2);
    SELECT @balance = Balance FROM Accounts WHERE AccountID = @accountID;
    RETURN @balance;
END;
```

#### **Get Complete Account Information**
```sql
CREATE FUNCTION FN_GetCompleteInfo(@customerID INT)
    RETURNS TABLE
    AS
    RETURN (
        SELECT C.FirstName, C.LastName, C.Email, C.Phone, C.Address,
               A.AccountType, A.Balance, A.CreatedAt
        FROM Accounts A
        JOIN Customers C ON A.CustomerID = C.CustomerID
        WHERE A.CustomerID = @customerID
    );
```

---

### 2. **Stored Procedures for Banking Operations**
Stored procedures handle operations like deposits, withdrawals, and transfers.

#### **Deposit Stored Procedure**
This procedure allows a deposit operation and ensures that the balance is updated in a transaction-safe manner.
```sql
CREATE PROCEDURE SP_Deposit(@accountID INT, @amount DECIMAL(10, 2))
AS
BEGIN
    BEGIN TRANSACTION
    BEGIN TRY
        IF @amount <= 0
        BEGIN
            PRINT 'Deposit amount must be greater than zero.';
            ROLLBACK TRANSACTION;
            RETURN;
        END

        DECLARE @balance DECIMAL(10, 2);
        SELECT @balance = dbo.FN_GetBalance(@accountID);

        UPDATE Accounts
        SET Balance = @balance + @amount
        WHERE AccountID = @accountID;

        INSERT INTO Transactions (AccountID, Amount, TransactionType)
        VALUES (@accountID, @amount, 'Deposit');

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        PRINT 'An error occurred during the transaction.';
        PRINT ERROR_MESSAGE();
    END CATCH
END;
```

#### **Transfer Stored Procedure**
This procedure handles the transfer between two accounts. It checks for sufficient balance and validates the receiver's account before committing the transaction.

```sql
CREATE PROCEDURE SP_Transfer(@senderAccountID INT, @receiverAccountID INT, @amount DECIMAL(10, 2))
AS
BEGIN
    BEGIN TRANSACTION
    BEGIN TRY
        IF @amount <= 0
        BEGIN
            PRINT 'Transfer amount must be greater than zero.';
            ROLLBACK TRANSACTION;
            RETURN;
        END

        DECLARE @senderBalance DECIMAL(10, 2);
        SELECT @senderBalance = dbo.FN_GetBalance(@senderAccountID);

        IF @senderBalance < @amount
        BEGIN
            PRINT 'Transfer amount is Too High';
            ROLLBACK TRANSACTION;
            RETURN;
        END

        UPDATE Accounts
        SET Balance = @senderBalance - @amount
        WHERE AccountID = @senderAccountID;

        DECLARE @receiverBalance DECIMAL(10, 2);
        SELECT @receiverBalance = dbo.FN_GetBalance(@receiverAccountID);

        IF @receiverBalance IS NULL
        BEGIN
            PRINT 'Receiver Account Not Found!';
            ROLLBACK TRANSACTION;
            RETURN;
        END

        UPDATE Accounts
        SET Balance = @receiverBalance + @amount
        WHERE AccountID = @receiverAccountID;

        INSERT INTO Transactions (AccountID, Amount, TransactionType)
        VALUES (@senderAccountID, @amount, 'Transferred'),
               (@receiverAccountID, @amount, 'Received');

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        PRINT 'An error occurred during the transaction.';
        PRINT ERROR_MESSAGE();
    END CATCH
END;
```

#### **Withdraw Stored Procedure**
This procedure ensures a customer can only withdraw if their balance is sufficient.

```sql
CREATE PROCEDURE SP_Withdraw(@accountID INT, @amount DECIMAL(10, 2))
AS
BEGIN
    BEGIN TRANSACTION
    BEGIN TRY
        DECLARE @balance DECIMAL(10, 2);
        SELECT @balance = dbo.FN_GetBalance(@accountID);

        IF @balance < @amount
        BEGIN
            PRINT 'Withdraw amount is Too High';
            ROLLBACK TRANSACTION;
            RETURN;
        END

        UPDATE Accounts
        SET Balance = @balance - @amount
        WHERE AccountID = @accountID;

        INSERT INTO Transactions (AccountID, Amount, TransactionType)
        VALUES (@accountID, @amount, 'Withdraw');

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        PRINT 'An error occurred during the transaction.';
        PRINT ERROR_MESSAGE();
    END CATCH
END;
```

---

## 🎓 **Conclusion**
By the end of this class, you should be able to:
- Understand and implement **transactions** in SQL to ensure the integrity of data operations.
- Create **stored procedures** to handle real-world banking operations, including deposits, withdrawals, and transfers.
- Utilize **functions** for fetching balances and customer details.
- Implement **error handling** in transactions using `TRY...CATCH` blocks to ensure safe operations.

Transactions in SQL are essential for applications that require atomicity, consistency, isolation, and durability (ACID properties), and this class has equipped you with the necessary skills to use them effectively.

