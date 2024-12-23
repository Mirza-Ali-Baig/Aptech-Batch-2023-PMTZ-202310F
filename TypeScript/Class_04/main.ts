// !!!!!!!!!!!!!! Class 04 !!!!!!!!!!!!!!!!
// !!!!!!!!!!!!!! Topics !!!!!!!!!!!!!!!!
// Enum
// DOM
// Type Assertions

enum Direction {
  Up = 3,
  Down = 5,
  Left,
  Right,
}

console.log(Direction.Down);

const enum Role {
  Admin = 5,
  User,
  Author,
  Vendor,
}

console.log(Role.Author);

console.log(document);

const heading = document.getElementsByTagName("h1");

console.log(heading[0]);

heading[0].textContent = "Introduction To TypeScript ";

// const img = <HTMLImageElement>document.querySelector("img");

// console.log(img.src);

// img.src =
//   "https://cdn.pixabay.com/photo/2024/10/25/18/54/celebration-9149600_1280.jpg";
// img.width = 500;

// const myImg = <HTMLImageElement>document.getElementById("myImg");
// const myImg = document.getElementById("myImg") as HTMLImageElement;

// myImg.src =
//   "https://cdn.pixabay.com/photo/2024/10/25/18/54/celebration-9149600_1280.jpg";
// myImg.width = 500;

const img = document.querySelector("img")!;

img.src =
  "https://cdn.pixabay.com/photo/2024/10/25/18/54/celebration-9149600_1280.jpg";
img.width = 400;

const footer = document.querySelector("footer")!;

const strong = document.createElement("strong");

const date: Date = new Date();

const year = date.getFullYear();
console.log(year);

strong.insertAdjacentHTML("beforeend", "<span> Copyright " + year + "</span>");

footer.append(strong);
