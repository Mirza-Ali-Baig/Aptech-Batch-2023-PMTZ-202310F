# 📘 **Class 06: Introduction to Object-Oriented Programming (OOP)**

---

## 🗂️ **Topics**
1. **Introduction to OOP**
2. **Classes and Objects**
3. **Properties and Methods**
4. **Constructors**

---

## 🌟 **Overview**
In this class, we explored the foundations of **Object-Oriented Programming (OOP)**. We delved into creating and using **classes and objects**, understanding **properties** and **methods**, and managing functionality using **constructors**.

OOP allows us to model real-world scenarios in code by encapsulating data and behaviors in objects. This approach promotes modularity, reusability, and scalability in software development.

---

## ✨ **Class Highlights**
1. **Classes**: Blueprints for creating objects. Define properties and methods that describe the object.
2. **Objects**: Instances of classes, representing real-world entities.
3. **Properties**: Data members of a class, representing its attributes.
4. **Methods**: Functions within a class, defining the behavior of the object.
5. **Constructors**: Special methods used to initialize objects with default or specific values when they are created.

---

## 📚 **Code Example**

### **Namespace and Main Program**
```csharp
namespace Class_06
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Creating an object of the Greeting class
            Greeting greetingObj = new Greeting();
            greetingObj.morningGreet();
            greetingObj.nightGreet();

            // Creating an object of the Bank class
            Bank bank = new Bank();
            bank.Deposit(10000);
        }
    }
}
```

---

### **Greeting Class**
A simple class to demonstrate methods.
```csharp
class Greeting
{
    public void morningGreet()
    {
        Console.WriteLine("Hello Good Morning!!");
    }

    public void nightGreet()
    {
        Console.WriteLine("Hello Good Night!!");
    }
}
```

---

### **Bank Class**
A class representing a simple bank account system.
```csharp
class Bank
{
    public int AccountNumber = 329368736; // Property
    public string AccountHolder = "Xyz"; // Property
    public double AccountBalance = 50000.00; // Property

    // Method to deposit money
    public void Deposit(double amount)
    {
        AccountBalance += amount;
        Console.WriteLine("Amount Successfully Deposited");
        Console.WriteLine($"New Balance: {AccountBalance}");
    }
}
```

---

## 🏁 **Conclusion**
This session introduced the core concepts of **Object-Oriented Programming**, enabling you to design and implement classes and objects. Understanding these basics is crucial for building scalable and maintainable applications. **Next Steps:** Explore advanced OOP features such as inheritance, polymorphism, and encapsulation.