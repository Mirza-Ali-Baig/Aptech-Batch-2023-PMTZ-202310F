# 💻 Class 01: C# Basics

## 🗂️ Topics
- 🔤 Understanding and declaring variables
- 🔍 Data types in C#
  - Numeric data types (`int`, `long`, `byte`, `decimal`, `double`, `float`)
  - String data types (`string`, `char`)
  - Other types (`bool`, `object`, `dynamic`, `var`)
- 📏 Working with minimum and maximum values of data types
- 📄 String concatenation in C#

---

## 📝 Overview
In this class, we explored the fundamentals of C#, focusing on variable declaration, data types, and basic string operations. This session provided a foundation for handling data efficiently in C# applications.

---

## 🌟 Class Highlights
### Key Concepts Covered:
- **Variable Declaration**: How to declare variables using different data types.
- **Data Types**: Exploring various data types and their properties.
- **Constant Variables**: Defining values that cannot be changed.
- **String Operations**: Basic string concatenation for displaying messages.

---

## 🛠️ Code Overview

### **Declaring Variables**
In C#, variables are declared with a specific data type, as shown:
```csharp
int age = 20;
string name = "Class 01";
double salary = 40000.00;
decimal percentage = 65.444M;
char test = 'A';
```

### **Displaying Variable Values**
To display variable values:
```csharp
Console.WriteLine(age);
Console.WriteLine(name);
Console.WriteLine(salary);
Console.WriteLine(percentage);
Console.WriteLine(test);
```

---

## 📊 MIN & MAX Values for Data Types
Each data type in C# has a minimum and maximum value. Below are examples for some of them:

```csharp
Console.WriteLine(int.MaxValue);   // Max value of int
Console.WriteLine(int.MinValue);   // Min value of int
Console.WriteLine(long.MaxValue);  // Max value of long
Console.WriteLine(long.MinValue);  // Min value of long
Console.WriteLine(byte.MaxValue);  // Max value of byte
Console.WriteLine(byte.MinValue);  // Min value of byte
Console.WriteLine(double.MaxValue);// Max value of double
Console.WriteLine(double.MinValue);// Min value of double
Console.WriteLine(char.MaxValue);  // Max value of char
Console.WriteLine(char.MinValue);  // Min value of char
```

### Constants
Constants are defined using the `const` keyword, meaning their value cannot change:
```csharp
const int number = 10;
```

### **String Concatenation Example**
Using `Console.WriteLine` to display a message:
```csharp
Console.WriteLine("Hello, my name is " + name + " and I am " + age + " years old.");
```

---

## 🔚 Conclusion
This introductory class provided a solid understanding of C# data types, variables, constants, and basic operations. These concepts are essential for building any C# application. Mastery of data types and variables is the first step towards writing efficient and organized code in C#. 
--- 

Feel free to reach out if you need further customization!