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
var user1 = {
    id: 1,
    name: "Usman",
    email: "usman@gmail.com",
    age: 30,
};
console.log(user1);
// user1.name=12;
// Expilict
var user2 = {
    id: "bjhcvhd",
    name: "Taha",
};
var user3 = {
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
var user4 = {
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
// let id:string | number="";
var id = "";
// Functions
function Greeting() {
    console.log("Hello World");
}
Greeting();
// Required Parameters
var Add = function (a, b) {
    console.log(a + b);
};
Add(20, 30); // 50
// Add("30", "20"); // 3020
// Optional Parameters
var SayHi = function (name) {
    // console.log("Hi, " + name);
    // console.log($"Hi,  {name}");
    //   console.log(`Hi, ${name}`);
    //   if (name) {
    //     console.log(`Hi, ${name}`);
    //   } else {
    //     console.log("Hi,");
    //   }
    console.log(name ? "Hi, ".concat(name) : "Hi,");
};
SayHi();
SayHi("Rehan");
// Default Parameters
var SayHello = function (name) {
    if (name === void 0) { name = "User"; }
    return "Hello , ".concat(name);
};
console.log(SayHello());
console.log(SayHello("Haris"));
var Calc = function (type, x, y) {
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
var CalcResult = Calc("+", 40, 60);
console.log(CalcResult);
var role = "Author";
console.log(role);
function Sub(a, b) {
    return null;
    return 10;
}
// Rest Parameter
var sum = function () {
    //   let sum: number = 0;
    var nums = [];
    for (var _i = 0; _i < arguments.length; _i++) {
        nums[_i] = arguments[_i];
    }
    //   nums.forEach((value) => {
    //     sum += value;
    //   });
    //   return sum;
    return nums.reduce(function (prevVal, currentVal) { return prevVal + currentVal; });
};
console.log(sum(20, 30, 40, 50, 60, 70, 80, 90));
