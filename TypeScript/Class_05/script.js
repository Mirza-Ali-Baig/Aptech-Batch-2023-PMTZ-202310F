// !!!!!!!!!!!!!!!!!!!!!!! Class 05 !!!!!!!!!!!!!!!!!!!!!!!
// OOP in TypeScript
var __extends = (this && this.__extends) || (function () {
    var extendStatics = function (d, b) {
        extendStatics = Object.setPrototypeOf ||
            ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
            function (d, b) { for (var p in b) if (Object.prototype.hasOwnProperty.call(b, p)) d[p] = b[p]; };
        return extendStatics(d, b);
    };
    return function (d, b) {
        if (typeof b !== "function" && b !== null)
            throw new TypeError("Class extends value " + String(b) + " is not a constructor or null");
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
var Student = /** @class */ (function () {
    function Student() {
        // Properties
        // Mtehods
        // Constructor
        // This Keyword
        this.name = "Usman";
        this.age = 12;
        this.class = "6th";
        console.log("Constructor Called");
    }
    Student.prototype.info = function () {
        console.log("!!!!!!!!!!!!!!!!! Student Info !!!!!!!!!!!!!!!!!");
        console.log("Student Name: ".concat(this.name));
        console.log("Student Age: ".concat(this.age));
        console.log("Student Class: ".concat(this.class));
    };
    Student.prototype.setInfo = function (name, age, studentClass) {
        this.name = name;
        this.age = age;
        this.class = studentClass;
    };
    return Student;
}());
// Object
var s1 = new Student();
s1.info();
var s2 = new Student();
// s2.name = "Taha";
// s2.age = 14;
// s2.class = "8th";
s2.info();
s2.setInfo("Yasir", 13, "7th");
s2.info();
// new Student();
// new Student();
// new Student();
// new Student();
// new Student();
var Cooder = /** @class */ (function () {
    function Cooder(name, projects, clients) {
        this.name = name;
        this.numberofProjects = projects;
        this.totalClients = clients;
    }
    return Cooder;
}());
var c1 = new Cooder("Rehan", 50, 30);
var WebDevloper = /** @class */ (function (_super) {
    __extends(WebDevloper, _super);
    function WebDevloper() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    return WebDevloper;
}(Cooder));
