--  class 08
-- Topics
-- transaction

create database class_11;
use class_11;


-- ********************************* What is the Transaction ? *********************************
-- A transaction is a sequence of database operations that, when executed together, results in a consistent and isolated state of the database.

-- ********************************* Syntax *********************************
-- begin transaction
-- ... SQL statements ...
-- commit;
-- end transaction


-- ********************************* Example *********************************

CREATE TABLE Customers
(
    CustomerID INT PRIMARY KEY IDENTITY (1,1),
    FirstName  NVARCHAR(50)         NOT NULL,
    LastName   NVARCHAR(50)         NOT NULL,
    Email      NVARCHAR(100) UNIQUE NOT NULL,
    Phone      NVARCHAR(15),
    Address    NVARCHAR(255),
    CreatedAt  DATETIME DEFAULT GETDATE()
);
INSERT INTO Customers (FirstName, LastName, Email, Phone, Address)
VALUES ('Ali', 'Khan', 'ali.khan@example.com', '03001234567', '123 Main St, Lahore'),
       ('Sara', 'Ahmed', 'sara.ahmed@example.com', '03007654321', '456 Park Ave, Karachi'),
       ('Omer', 'Raza', 'omer.raza@example.com', '03123456789', '789 Market St, Islamabad'),
       ('Fatima', 'Baloch', 'fatima.baloch@example.com', '03456789012', '321 Elm St, Multan'),
       ('Zain', 'Shah', 'zain.shah@example.com', '03234567890', '654 Maple St, Peshawar'),
       ('Hina', 'Malik', 'hina.malik@example.com', '03567890123', '987 Oak St, Quetta'),
       ('Bilal', 'Iqbal', 'bilal.iqbal@example.com', '03789012345', '258 Pine St, Faisalabad'),
       ('Ayesha', 'Gul', 'ayesha.gul@example.com', '03890123456', '369 Birch St, Gujranwala'),
       ('Tariq', 'Mehmood', 'tariq.mehr@domain.com', '03901234567', '741 Cedar St, Sialkot'),
       ('Nida', 'Hussain', 'nida.hussain@example.com', '04012345678', '852 Willow St, Rawalpindi');

CREATE TABLE Accounts
(
    AccountID   INT PRIMARY KEY IDENTITY (1,1),
    CustomerID  INT,
    AccountType NVARCHAR(20) NOT NULL, -- e.g., Savings, current,default
    Balance     DECIMAL(10, 2) DEFAULT 0.00,
    CreatedAt   DATETIME       DEFAULT GETDATE(),
    FOREIGN KEY (CustomerID) REFERENCES Customers (CustomerID) ON DELETE CASCADE
);
INSERT INTO Accounts (CustomerID, AccountType, Balance)
VALUES (1, 'Savings', 1500.00),
       (2, 'Current', 2500.00),
       (3, 'Savings', 3000.00),
       (4, 'Default', 1000.00),
       (5, 'Savings', 5000.00),
       (6, 'Current', 2000.00),
       (7, 'Default', 750.00),
       (8, 'Savings', 3500.00),
       (9, 'Current', 600.00),
       (10, 'Default', 1200.00);


CREATE TABLE Transactions
(
    TransactionID   INT PRIMARY KEY IDENTITY (1,1),
    AccountID       INT,
    TransactionDate DATETIME DEFAULT GETDATE(),
    Amount          DECIMAL(10, 2) NOT NULL,
    TransactionType NVARCHAR(10)   NOT NULL, -- e.g., Deposit, Withdrawal, Transfer
    FOREIGN KEY (AccountID) REFERENCES Accounts (AccountID) ON DELETE CASCADE
);
GO
CREATE FUNCTION dbo.FN_GetBalance(@accountID INT)
    RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @balance DECIMAL(10, 2);
    SELECT @balance = Balance FROM Accounts WHERE AccountID = @accountID;
    RETURN @balance;
END;
GO
create function FN_AccountInfo(@AccountID INT)
    RETURNS TABLE
        AS
        RETURN(SELECT AccountType, Balance, CreatedAt
               FROM Accounts
               WHERE AccountID = @AccountID);
GO

create function FN_GetCompleteInfo(@customerID INT)
    RETURNS TABLE
        AS
        RETURN(SELECT C.FirstName,
                      C.LastName,
                      C.Email,
                      C.Phone,
                      C.Address,
                      A.AccountType,
                      A.Balance,
                      A.CreatedAt
               from Accounts A
                        join Customers C on A.CustomerID = C.CustomerID
               where A.CustomerID = @customerID);

GO

select dbo.FN_GetBalance(3)

GO
create procedure SP_Deposit(@accountID int, @amount decimal(10, 2))
as
begin
    begin transaction
        begin try
            if @amount <= 0
                begin
                    print 'Deposit amount must be greater than zero.';
                    rollback transaction;
                    return;
                end
            declare @balance decimal(10, 2);
            select @balance = dbo.FN_GetBalance(@accountID);

            update Accounts
            set Balance = @balance + @amount
            where AccountID = @accountID;
            insert into Transactions (AccountID, Amount, TransactionType)
            values (@accountID, @amount, 'Deposit');
            commit transaction;
        end try
        begin catch
            IF @@TRANCOUNT > 0
                ROLLBACK TRANSACTION;

            PRINT 'An error occurred during the transaction.';
            PRINT ERROR_MESSAGE();
        end catch
end

GO

EXECUTE SP_Deposit 2,5000;
GO
create procedure SP_Transfer(@senderAccountID int,@receiverAccountID int, @amount decimal(10, 2))
as
begin
    begin transaction
        begin try
            if @amount <= 0
                begin
                    print 'Transfer amount must be greater than zero.';
                    rollback transaction;
                    return;
                end
            declare @senderBalance decimal(10, 2);
            select @senderBalance = dbo.FN_GetBalance(@senderAccountID);

            IF @senderBalance < @amount
            BEGIN
                print 'Transfer amount is Too High';
                rollback transaction;
                return;
            END

            update Accounts
            set Balance = @senderBalance - @amount 
            where AccountID = @senderAccountID;

            declare @receiverBalance decimal(10, 2);
            select @receiverBalance = dbo.FN_GetBalance(@receiverAccountID);

            IF @receiverBalance is NULL
            BEGIN
                print 'Receiver Account Not Found!!';
                rollback transaction;
                return;
            END

            update Accounts
            set Balance = @receiverBalance + @amount
            where AccountID = @receiverAccountID;

            insert into Transactions (AccountID, Amount, TransactionType)
            values (@senderAccountID, @amount, 'Transferd'),
                   (@receiverAccountID, @amount, 'Received');
            commit transaction;
        end try

        begin catch
            IF @@TRANCOUNT > 0
                ROLLBACK TRANSACTION;
                PRINT 'An error occurred during the transaction.';
                PRINT ERROR_MESSAGE();
        end catch
end



select dbo.FN_GetBalance(4)

EXEC SP_Transfer 3,4,1000;
select dbo.FN_GetBalance(6)
select dbo.FN_GetBalance(8)

EXECUTE SP_Transfer 6,17,300;



GO
create procedure SP_Withdraw(@accountID int, @amount decimal(10, 2))
as
begin
    begin transaction
        begin try
            declare @balance decimal(10, 2);
            select @balance = dbo.FN_GetBalance(@accountID);

            
            IF @balance < @amount
            BEGIN
                print 'Withdraw amount is Too High';
                rollback transaction;
                return;
            END

            update Accounts
            set Balance = @balance - @amount
            where AccountID = @accountID;
            insert into Transactions (AccountID, Amount, TransactionType)
            values (@accountID, @amount, 'Withdraw');
            commit transaction;
        end try
        begin catch
            IF @@TRANCOUNT > 0
                ROLLBACK TRANSACTION;

            PRINT 'An error occurred during the transaction.';
            PRINT ERROR_MESSAGE();
        end catch
end
