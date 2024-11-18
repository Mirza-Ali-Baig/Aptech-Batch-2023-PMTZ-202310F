# 📘 **Class 04: Arrays, Loops, and Variable Types in C#**

---

## 🗂️ **Topics**
1. **Arrays**:
   - Initialization and manipulation
   - Accessing elements
   - Looping through arrays using `for` and `foreach`
2. **Loops**:
   - `for` and `foreach` loop usage
3. **Variable Types**:
   - `var`
   - `dynamic`
   - `object`

---

## 🌟 **Overview**
This class explored fundamental concepts in C# programming, focusing on working with **arrays**, **looping constructs**, and **flexible variable types**. Arrays provide a structured way to manage collections of data, while `for` and `foreach` loops enable efficient iteration. The session also introduced dynamic data handling with the `var`, `dynamic`, and `object` keywords.

---

## ✨ **Class Highlights**
- Declaring and initializing arrays in both **long** and **short syntax**.
- Demonstrating how to access array elements and handle their indexes.
- Using `for` and `foreach` loops to iterate through arrays.
- Understanding the differences between `var`, `dynamic`, and `object` keywords, including their strengths and limitations.

---

## 🗃️ **Code Snippets**

### 📋 **Arrays**

#### Declaration and Initialization
```csharp
int[] numbers = new int[10];
numbers[0] = 10;
numbers[1] = 20;
// Filling remaining elements
numbers[7] = 80;
numbers[9] = 100;
```

#### Short Syntax
```csharp
string[] names = { "Hassan", "Basit", "Javed", "Rehman", "Usman", "Islam", "Rehan", "Waseem" };
```

#### Accessing Elements
```csharp
Console.WriteLine(numbers[3]); // Accessing the 4th element
Console.WriteLine(numbers.Length); // Printing array length
```

---

### 🔄 **Loops**

#### Using a `for` Loop
```csharp
for (int i = 0; i < numbers.Length; i++) {
    Console.WriteLine($"Number at index {i} : {numbers[i]}");
}
```

#### Using a `foreach` Loop
```csharp
foreach (int number in numbers) {
    Console.WriteLine(number);
}
```

#### Iterating Over Names
```csharp
foreach (string name in names) {
    Console.WriteLine($"User Name : {name}");
}
```

---

### 🔑 **Variable Types**

#### `var`
- Automatically infers the type of the variable at compile-time.
```csharp
var num1 = "Hello";
num1 = "World";
Console.WriteLine(num1.ToUpper());
```

#### `dynamic`
- Type is determined at runtime, offering more flexibility but less type safety.
```csharp
dynamic num2 = "Hello";
Console.WriteLine(num2);
num2 = 40;
Console.WriteLine(num2);
```

#### `object`
- The base type for all data in C#. Requires explicit casting for type-specific operations.
```csharp
Object num3 = 50;
Console.WriteLine(num3);
num3 = "string";
Console.WriteLine(num3);
```

---

## 🏁 **Conclusion**
This class emphasized the practical use of arrays, loops, and variable types in C#. Arrays are essential for managing collections, while loops provide powerful tools for iteration. Understanding variable types like `var`, `dynamic`, and `object` enables developers to write flexible and efficient code. Experimenting with these features will enhance your ability to handle diverse programming challenges.