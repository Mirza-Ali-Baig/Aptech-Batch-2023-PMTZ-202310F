// !!!!!!!!!!!!!!!!!!!!!!! Class 05 !!!!!!!!!!!!!!!!!!!!!!!
// OOP in TypeScript

class Student {
  // Properties
  // Mtehods
  // Constructor
  // This Keyword

  name: string = "Usman";
  age: number = 12;
  class: string = "6th";

  constructor() {
    console.log("Constructor Called");
  }

  info(): void {
    console.log("!!!!!!!!!!!!!!!!! Student Info !!!!!!!!!!!!!!!!!");
    console.log(`Student Name: ${this.name}`);
    console.log(`Student Age: ${this.age}`);
    console.log(`Student Class: ${this.class}`);
  }

  setInfo(name: string, age: number, studentClass: string): void {
    this.name = name;
    this.age = age;
    this.class = studentClass;
  }
}

// Object

const s1 = new Student();

s1.info();

const s2 = new Student();
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

class Cooder {
  // public
  public name: string;
  // protected
  protected numberofProjects: number;
  // private
  private totalClients: number;

  constructor(name: string, projects: number, clients: number) {
    this.name = name;
    this.numberofProjects = projects;
    this.totalClients = clients;
  }
}

const c1 = new Cooder("Rehan", 50, 30);

class WebDevloper extends Cooder {

    
}
