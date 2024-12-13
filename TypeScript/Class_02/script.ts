// !!!!!!!!!!!!!!!! Class 02 !!!!!!!!!!!!!!!!!!!
// !!!!!!!!!!!!!!!! Topics !!!!!!!!!!!!!!!!!!!

// Basic Data Types
// Implicit
// Explicit

// number
// string
// boolean
// array
// object
// null
// any
// enum
// Union

// Implicit

let myName = "Ali";
let age;

age = 30;

age = "40";

age = true;

// myName=20;
myName = "Basit";

// Explicit
let myExplicitName: string;
let myExplicitAge: number;

myExplicitAge = 20;

// myExplicitAge="50";
let isLoading: boolean;

// isLoading=null;
isLoading = true;

// !!!!!!!!!!!!!!!!!!!!!!!!! Array & Object !!!!!!!!!!!!!!!!!

let myEmployees = ["Usman", "Talha", "Taha", "Kashif"];

// myEmployees[2]=30;
myEmployees[2] = "Yasir";
// myEmployees.push(20);
myEmployees.push("Islam");

let myEmployeesAge = [20, 22, 23, 24, 23, 25];

// myEmployeesAge.unshift("30")
myEmployeesAge.unshift(30);

let mixedArry = [1, "Rehan", 23, "Karachi", true];

//

let Uniname: string | null;

Uniname = null;

Uniname = "Sara";

// Uniname=20;

let myExplicitEmp: (string | number | boolean)[] = [1, "", true, true, "", 1];

// !!!!!!!!!!!!!!! Tuple !!!!!!!!!!!!!!!!!!!!!!!

let mytuple: [string, number, boolean, null] = ["", 20, true, null];

let myObj = {
  // Key : Value
  id: 1,
  name: "Qasim",
  email: "qasim@gmail.com",
  age: 30,
};

console.log(myObj);

myObj.name = "Hassan";

console.log(myObj);

console.log("Hello");

console.log("Class End");
