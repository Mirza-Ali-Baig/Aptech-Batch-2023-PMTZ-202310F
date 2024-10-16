
CREATE DATABASE pmtz_202310f_class4;

CREATE TABLE employees (
    id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL,
    department VARCHAR(30) NOT NULL
);

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

SELECT * from employees; 

SELECT * from employees WHERE department='HR';


SELECT COUNT(department) as number_of_employees from employees WHERE department='HR';

-- Group By

SELECT COUNT(department) number ,department from employees GROUP BY department;

-- having

SELECT COUNT(department) number ,department from employees GROUP BY department having COUNT(*) > 5;


-- Count
-- SUM
-- MAX
-- MIN
-- AVG