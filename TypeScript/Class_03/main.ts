// !!!!!!!!!!!!!!!!!!!!!! Class 03 !!!!!!!!!!!!
// !!!!!!!!!!!!!!!!!!!!!! Topics !!!!!!!!!!!!
// Custom Type
// Type Aliasess
// Functions
// Function Return Types
// Required Parameters
// Optional Parameters
// Default Parameters
// Enum

let user1 = {
  id: 1,
  name: "Usman",
  email: "usman@gmail.com",
  age: 30,
};

console.log(user1);

// user1.name=12;

// Expilict
let user2: { id: number | string; name: string } = {
  id: "bjhcvhd",
  name: "Taha",
};

// Custom Type

type userType = {
  id: number | string;
  name: string;
  email: string;
  age: number;
  address: { city: string; zip: number; landmark?: string; araea: string };
  password: string;
};

let user3: userType = {
  id: 1,
  name: "Usman",
  email: "usman@gmail.com",
  age: 20,
  address: {
    city: "Karachi",
    zip: 28767,
    // landmark:"Aptech Gulshan",
    araea: "Gulshan",
  },
  password: "123",
};

let user4: userType = {
  id: 1,
  name: "Usman",
  email: "usman@gmail.com",
  age: 20,
  address: {
    city: "Karachi",
    zip: 28767,
    // landmark:"Aptech Gulshan",
    araea: "Gulshan",
  },
  password: "123",
};

type StringOrNumber = string | number;

// let id:string | number="";
let id: StringOrNumber = "";

// Functions

function Greeting() {
  console.log("Hello World");
}

Greeting();

// Required Parameters
const Add = (a: number, b: number) => {
  console.log(a + b);
};

Add(20, 30); // 50
// Add("30", "20"); // 3020

// Optional Parameters
const SayHi = (name?: string): void => {
  // console.log("Hi, " + name);
  // console.log($"Hi,  {name}");
  //   console.log(`Hi, ${name}`);

  //   if (name) {
  //     console.log(`Hi, ${name}`);
  //   } else {
  //     console.log("Hi,");
  //   }

  console.log(name ? `Hi, ${name}` : "Hi,");
};

SayHi();
SayHi("Rehan");

// Default Parameters

const SayHello = (name: string = "User") => {
  return `Hello , ${name}`;
};

console.log(SayHello());
console.log(SayHello("Haris"));

const Calc = (type: "+" | "-" | "*" | "/", x: number, y: number) => {
  switch (type) {
    case "+":
      return x + y;
    case "-":
      return x - y;
    case "*":
      return x * y;
    case "/":
      return x / y;
    default:
      return "Invalid Opteration";
  }
};

// + ,- , * , /

let CalcResult = Calc("+", 40, 60);

console.log(CalcResult);

let role: "Admin" | "Vendor" | "User" | "Author" = "Author";
console.log(role);

function Sub(a: number, b: null): number | null {
  return null;
  return 10;
}

// Rest Parameter

const sum = (...nums: number[]): number => {
  //   let sum: number = 0;

  //   nums.forEach((value) => {
  //     sum += value;
  //   });

  //   return sum;

  return nums.reduce((prevVal, currentVal) => prevVal + currentVal);
};

console.log(sum(20, 30, 40, 50, 60, 70, 80, 90));
