

// !!!!!!!!!!!!!!!!!!!!!!!! Class 02 !!!!!!!!!!!!!!!!!!!!!!!! 
// Topics
// Operators
// If, else , else if, switch

// string name = "Admin";


// !!!!!!!!!!!!!!!!!!!!!!!!!! Operators !!!!!!!!!!!!!!!!!!!!!!!!!!
Console.WriteLine("!!!!!!!!!!!!!!!!!!!!!!!!!! Operators !!!!!!!!!!!!!!!!!!!!!!!!!!");

// Relational Operators ( == , > , < , >= , <= , !=)  true/false
double num1 = 43;
double num2 = 45;
Console.WriteLine("Relational Operators ( == , > , < , >= , <= , !=)");
Console.WriteLine("num1 == num2 : " + (num1==num2));
Console.WriteLine("num1 > num2 : " + (num1>num2));
Console.WriteLine("num1 < num2 : " + (num1<num2));
Console.WriteLine("num1 >= num2 : " + (num1>=num2));
Console.WriteLine("num1 <= num2 : " + (num1<=num2));
Console.WriteLine("num1 != num2 : " + (num1!=num2));
Console.WriteLine("num1 == num2 : " + (num1==num2));

// Arthmetic Operators ( + , - ,* , / , %) 

Console.WriteLine("Arthmetic Operators ( + , - ,* , / , %)");
Console.WriteLine(" num1 + num2 : " +(num1+num2) );
Console.WriteLine(" num1 - num2 : " +(num1-num2) );
Console.WriteLine(" num1 * num2 : " +(num1*num2) );
Console.WriteLine(" num1 / num2 : " +(num1/num2) );
Console.WriteLine(" num1 % num2 : " +(num1%num2) );

// Logical Operators ( && , ||,!) 
 bool condition1=false;
bool condition2=false;

Console.WriteLine("Logical Operators ( && => AND , || => OR,! => NOT)");

Console.WriteLine("condition1 && condition2 : "+ (condition1 && condition2));
Console.WriteLine("condition1 || condition2 : "+ (condition1 || condition2));
Console.WriteLine("!condition1  : " + !(condition1));

Console.WriteLine("Assignment Operators (=, +=, -=, *=, /=)");

int x= 20;

x += 40;
Console.WriteLine("X after += 40 : "+ x);

x -= 30;
Console.WriteLine("X after -= 40 : "+ x);

x *= 5;
Console.WriteLine("X after *= 40 : "+ x);

x /= 2;
Console.WriteLine("X after /= 40 : "+ x);

// Inc/Dec Operators
Console.WriteLine("Inc/Dec Operators (++, --)");
x++;
Console.WriteLine("X after ++ : "+ x); 

x--;
Console.WriteLine("X after -- : "+ x);

Console.WriteLine("!!!!!!!!!!!!!!!!!!! If, else , else if, switch !!!!!!!!!!!!!!!!!!!!!!!!");

string role = "admin";

Console.WriteLine("!!!!!!!!!!! IF :");
if (role == "user")
{
    Console.WriteLine("You can Only Read!!");
}


Console.WriteLine("!!!!!!!!!!! IF ELSE :");
if (role == "user")
{
    Console.WriteLine("You can Only Read!!");
}
else
{
    Console.WriteLine("You can Read and Write in anywhere");
}


Console.WriteLine("!!!!!!!!!!! ELSE IF:");
role = "staff";
if (role == "user")
{
    Console.WriteLine("You can Only Read!!");
}
else if (role == "staff")
{
    Console.WriteLine("You Can Read and Write in Staff Department");
}
else
{
    Console.WriteLine("You can Read and Write in anywhere");
}


// Calc Student Percentage
string name = "Kabeer";
double totalMarks = 300;
int urduMarks = 40;
int englishMarks = 30;
int computerMarks = 40;
double obtainedMarks=urduMarks+englishMarks+computerMarks;

double percentage = (obtainedMarks / totalMarks * 100);

Console.WriteLine(obtainedMarks);
Console.WriteLine(percentage);
// obt / tot * 100
string grade;

if(percentage >= 80 && percentage <100)
{
    grade = "A+";
}else if (percentage >=70)
{
    grade = "A";
}
else if(percentage >= 60)
{
    grade = "B";
}
else if(percentage >= 50)
{
    grade= "C";
}
else if (percentage >= 40)
{
    grade="D";
}
else
{
    grade = "Fail";
}


Console.WriteLine($"Student Name : {name}");
Console.WriteLine($"Student Obtained marks : {obtainedMarks}");
Console.WriteLine($"Student Percentage : {percentage}");
Console.WriteLine($"Student Grade : {grade}");