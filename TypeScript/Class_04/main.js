// !!!!!!!!!!!!!! Class 04 !!!!!!!!!!!!!!!!
// !!!!!!!!!!!!!! Topics !!!!!!!!!!!!!!!!
// Enum
// DOM
// Type Assertions
var Direction;
(function (Direction) {
    Direction[Direction["Up"] = 3] = "Up";
    Direction[Direction["Down"] = 5] = "Down";
    Direction[Direction["Left"] = 6] = "Left";
    Direction[Direction["Right"] = 7] = "Right";
})(Direction || (Direction = {}));
console.log(Direction.Down);
console.log(7 /* Role.Author */);
console.log(document);
var heading = document.getElementsByTagName("h1");
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
var img = document.querySelector("img");
img.src =
    "https://cdn.pixabay.com/photo/2024/10/25/18/54/celebration-9149600_1280.jpg";
img.width = 400;
var footer = document.querySelector("footer");
var strong = document.createElement("strong");
var date = new Date();
var year = date.getFullYear();
console.log(year);
strong.insertAdjacentHTML("beforeend", "<span> Copyright " + year + "</span>");
footer.append(strong);
