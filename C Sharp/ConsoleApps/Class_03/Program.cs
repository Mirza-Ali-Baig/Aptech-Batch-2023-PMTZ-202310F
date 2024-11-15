// !!!!!!!!!!!!!!!!!!!!!!!! Class 03 !!!!!!!!!!!!!!!!!!!!!!!!
// Topics
// Switch Statement , Ternary Operator
// Loops (For, While, Do-While , ForEach)

Console.WriteLine("!!!!!!!!!!!!!!!!! Start !!!!!!!!!!!!!!!!!!!!!!");
string name = "Kabeer";
double totalMarks = 300;
int urduMarks = 80;
int englishMarks = 30;
int computerMarks = 40;
double obtainedMarks = urduMarks + englishMarks + computerMarks;

double percentage = (obtainedMarks / totalMarks * 100);

// Console.WriteLine(obtainedMarks);
// Console.WriteLine(percentage);
// obt / tot * 100
string grade;

if (percentage >= 80 && percentage < 100)
{
    grade = "A+";
}
else if (percentage >= 70)
{
    grade = "A";
}
else if (percentage >= 60)
{
    grade = "B";
}
else if (percentage >= 50)
{
    grade = "C";
}
else if (percentage >= 40)
{
    grade = "D";
}
else
{
    grade = "Fail";
}

Console.WriteLine("!!!!!!!!!!!!!!!!! Student Report !!!!!!!!!!!!!!!!!!!!!!");

Console.WriteLine($"Student Name : {name}");
Console.WriteLine($"Student Obtained marks : {obtainedMarks}");
Console.WriteLine($"Student Percentage : {percentage}");
Console.WriteLine($"Student Grade : {grade}");
Console.Write("Student Remarks : ");
switch (grade)
{
    case "A+":
        Console.WriteLine("Very Good");
        break;
    case "A":
        Console.WriteLine("Good");
        break;
    case "B":
        Console.WriteLine("Fair");
        break;
    case "C":
        Console.WriteLine("Need to improve");
        break;
    case "D":
        Console.WriteLine("bad profermance");
        break;
    default:
        Console.WriteLine("Very Nice");
        break;
}


Console.WriteLine("!!!!!!!!!!!!!!!!! Days Checker !!!!!!!!!!!!!!!!!!!!!!");

int day = 1;

switch (day)
{
    case 1:
        Console.WriteLine("Today is Monday");
        break;
    case 2:
        Console.WriteLine("Today is Tuesday");
        break;
    case 3:
        Console.WriteLine("Today is Wednesday");
        break;
    case 4:
        Console.WriteLine("Today is Thursday");
        break;
    case 5:
        Console.WriteLine("Today is Friday");
        break;
    case 6:
        Console.WriteLine("Today is Saturday");
        break;
    case 7:
        Console.WriteLine("Today is Sunday");
        break;
    default:
        Console.WriteLine("Invalid");
        break;
}

// !!!!!!!!!!!!!!!!!!!!!!! Ternary Operator !!!!!!!!!!!!!!!!!!!!!!!!

int age = 12;

if(age >= 18)
    Console.WriteLine("You can Vote");
else
    Console.WriteLine("You can't Vote");

// condition ? if : else

Console.WriteLine(age >=18 ? "You can Vote" : "You can't Vote");


Console.WriteLine("!!!!!!!!!!!!!!!!!  Loops (For, While, Do-While , ForEach) !!!!!!!!!!!!!!!!!!!!!!");

Console.WriteLine("!!!!!!!!!!!!!!!!! For Loop !!!!!!!!!!!!!!!!!!!!!!");


for(int a=1; a <= 20; a++)
{
    Console.WriteLine($" {a} ) Inside For loop");
}

Console.WriteLine("!!!!!!!!!!!!!!!!! While Loop !!!!!!!!!!!!!!!!!!!!!!");

int b = 40;

while (b>0)
{
    Console.WriteLine($" {b} ) Inside While loop");
    b--;
    
}

Console.WriteLine("!!!!!!!!!!!!!!!!! Do While Loop !!!!!!!!!!!!!!!!!!!!!!");

int c = 50;
do
{
    Console.WriteLine($" {c} ) Inside Do While loop");
    c++;
}
while (c >= 100);


// Display Table of 6

Console.WriteLine("!!!!!!!!!!!!!!!!! Read Input !!!!!!!!!!!!!!!!!!!!!!");

Console.WriteLine("Enter Your Name :");
string myName = Console.ReadLine();
Console.WriteLine("Enter Your Password :");
string myPass = Console.ReadLine();

Console.WriteLine("Hello " + myName);
Console.WriteLine("Your Password is Not Secured " + myPass);

Console.WriteLine("!!!!!!!!!!!!!!!!! String Conversion (String To Number) !!!!!!!!!!!!!!!!!!!!!!");
Console.WriteLine("Enter Your Num1 :");
int num1=int.Parse(Console.ReadLine());
Console.WriteLine("Enter Your Num2 :");
int num2=int.Parse(Console.ReadLine());

Console.WriteLine(num1 +num2);

