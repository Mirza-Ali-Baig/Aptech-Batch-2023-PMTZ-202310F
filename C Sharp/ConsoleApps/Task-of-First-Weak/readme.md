# 🎉 **Event Management System Assignment**  


## 📝 **Scenario**  
You have been hired to build an **Event Management System** for a local event organizing company. This system will:  
1. 🗓️ Check the status of event days.  
2. 🛍️ Provide discounts based on the user's age.  
3. 👥 Generate guest lists dynamically.  
4. 💰 Calculate the total budget for an event.  

---

## 📌 **Questions**  

### **Part 1: Event Day Checker**  
- 🔄 Use a **`switch` statement** to map event days to their activities:  
  - **1**: *Decorations Day*  
  - **2**: *Guest Invitation Day*  
  - **3**: *Food Preparation Day*  
  - **4**: *Final Rehearsals Day*  
  - **5**: *Event Day*  
  - **Default**: *Invalid Day Selected*  

---

### **Part 2: Age-Based Discount**  
- 🧮 Use a **ternary operator** to calculate discounts based on age:  
  - 👶 **Age < 18**: *"50% Discount"*  
  - 🧑 **Age ≥ 18**: *"No Discount"*  

---

### **Part 3: Generate Guest List**  
- 🔁 Use a **`while` loop** to collect guest names until the user inputs `"stop"`.  
- 📃 Display the guest list after the loop ends.  

---

### **Part 4: Event Budget Calculation**  
- ➕ Use a **`for` loop** to calculate the total budget:  
  - 💵 Ask for the cost of each item (e.g., decorations, food, venue, etc.).  
  - 💳 Display the total budget at the end.  

---

### 🌟 **Bonus: Post-Event Survey**  
- 🔁 Use a **`do-while` loop** to collect feedback until the user inputs `"done"`.  
- 🗒️ Print all feedback after the loop ends.  

---

## 🧩 **Example Interaction**  

### **Input:**  
```plaintext  
Enter the event day (1-5): 3  

Enter your age: 15  

Enter guest names (type "stop" to finish):  
- Ali  
- Sara  
- stop  

Enter the cost of each item for the event (type "done" to finish):  
- Decorations: 5000  
- Food: 10000  
- Venue: 15000  
- done  

Enter your feedback about the event (type "done" to finish):  
- Great management!  
- Food could be better.  
- done  
```  

### **Output:**  
```plaintext  
--- Event Day Checker ---  
Today is Food Preparation Day.  

--- Age-Based Discount ---  
You are eligible for a 50% Discount!  

--- Guest List ---  
1. Ali  
2. Sara  

--- Event Budget ---  
Total Budget: 30,000  

--- Post-Event Survey ---  
Feedback Received:  
1. Great management!  
2. Food could be better.  
```  

---

### ✏️ **Instructions**  
1. **Write the code** to solve each part of the assignment.  
2. **Test** your program with the example inputs above.
💡 *Remember to use comments to explain your logic!*  

--- 

### 📈 **Evaluation Criteria**  
- ✅ Proper usage of `switch`, `ternary operator`, and loops.  
- ✅ Clear and logical code structure.  
- ✅ Correct output as per the example interaction.  
- ✅ Bonus part completion (extra points!).  

---

💻 **Happy Coding!** 🚀  