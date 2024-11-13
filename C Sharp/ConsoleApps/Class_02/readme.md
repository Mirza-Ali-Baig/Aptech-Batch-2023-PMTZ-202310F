# 🖥️ Class 02: C# Control Structures and Operators

## 🗂️ Topics
- ➕ Operators in C#
  - Relational Operators
  - Arithmetic Operators
  - Logical Operators
  - Assignment Operators
  - Increment/Decrement Operators
- 🔄 Control Structures
  - `if`, `else`, `else if`, and `switch` statements

---

## 📝 Overview
In this class, we explored C# operators and essential control structures to make decisions and perform various operations on data. This included a hands-on approach to using operators and control statements to calculate grades based on student scores.

---

## 🌟 Class Highlights

### **Operators in C#**

Operators are symbols used to perform operations on variables and values. We covered the following types:

1. **Relational Operators** (`==`, `>`, `<`, `>=`, `<=`, `!=`)
   - Compare values and return `true` or `false`.

2. **Arithmetic Operators** (`+`, `-`, `*`, `/`, `%`)
   - Perform basic arithmetic operations.

3. **Logical Operators** (`&&`, `||`, `!`)
   - Used to combine conditional statements.

4. **Assignment Operators** (`=`, `+=`, `-=`, `*=`, `/=`)
   - Assign values and perform operations in one step.

5. **Increment/Decrement Operators** (`++`, `--`)
   - Used to increase or decrease a variable’s value by one.

### **Control Structures**

Control structures allow the program to make decisions based on conditions:
- **`if`**: Executes a block if the condition is true.
- **`else`**: Executes a block if the `if` condition is false.
- **`else if`**: Adds additional conditions.
- **`switch`**: Evaluates a variable and matches it to a case.

---

## 🛠️ Code Overview

### **Operators in Action**

**Relational Operators Example**:
```csharp
double num1 = 43;
double num2 = 45;
Console.WriteLine("num1 == num2 : " + (num1 == num2));
Console.WriteLine("num1 > num2 : " + (num1 > num2));
```

**Arithmetic Operators Example**:
```csharp
Console.WriteLine("num1 + num2 : " + (num1 + num2));
Console.WriteLine("num1 - num2 : " + (num1 - num2));
```

**Logical Operators Example**:
```csharp
bool condition1 = false;
bool condition2 = false;
Console.WriteLine("condition1 && condition2 : " + (condition1 && condition2));
```

**Assignment Operators Example**:
```csharp
int x = 20;
x += 40;
Console.WriteLine("X after += 40 : " + x);
```

**Increment/Decrement Example**:
```csharp
x++;
Console.WriteLine("X after ++ : " + x);
```

---

### **Using `if`, `else`, and `else if`**

Example with role-based access:
```csharp
string role = "staff";

if (role == "user")
{
    Console.WriteLine("You can Only Read!!");
}
else if (role == "staff")
{
    Console.WriteLine("You Can Read and Write in Staff Department");
}
else
{
    Console.WriteLine("You can Read and Write in anywhere");
}
```

### **Student Grade Calculation**

This example calculates a student's grade based on their percentage:
```csharp
string name = "Kabeer";
double totalMarks = 300;
int urduMarks = 40;
int englishMarks = 30;
int computerMarks = 40;
double obtainedMarks = urduMarks + englishMarks + computerMarks;

double percentage = (obtainedMarks / totalMarks * 100);
string grade;

if (percentage >= 80 && percentage < 100)
{
    grade = "A+";
}
else if (percentage >= 70)
{
    grade = "A";
}
else if (percentage >= 60)
{
    grade = "B";
}
else if (percentage >= 50)
{
    grade = "C";
}
else if (percentage >= 40)
{
    grade = "D";
}
else
{
    grade = "Fail";
}

Console.WriteLine($"Student Name : {name}");
Console.WriteLine($"Student Obtained marks : {obtainedMarks}");
Console.WriteLine($"Student Percentage : {percentage}");
Console.WriteLine($"Student Grade : {grade}");
```

---

## 🔚 Conclusion
This class covered essential C# concepts, including operators and control structures, to manage data operations and decisions. Understanding these concepts is key to building dynamic applications that respond to various inputs and conditions.
