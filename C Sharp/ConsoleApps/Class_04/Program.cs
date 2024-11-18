// !!!!!!!!!!!!!!!!!!!!!!!!!!! Class 04 !!!!!!!!!!!!!!!!!!!!!!!!!!!
// !!!!!!!!!!!!!!!!!!!!!!!!!!! Topics !!!!!!!!!!!!!!!!!!!!!!!!!!!
// Array
// ForEach
// Var 

Console.WriteLine("!!!!!!!!!!!!!!! Start !!!!!!!!!!!!!!!");

//Console.BackgroundColor = System.ConsoleColor.Yellow;
//Console.ForegroundColor = System.ConsoleColor.Green;
//Console.
//Console.WriteLine("Enter a Table");
//int table = int.Parse(Console.ReadLine());


//for (int i = 1; i <= 10; i++)
//{
//    Console.WriteLine($"{table} X {i} = {table * i}");
//}




Console.WriteLine("!!!!!!!!!!!!!!! Array Start !!!!!!!!!!!!!!!");

int[] numbers=new int[10];

numbers[0] = 10;
numbers[1] = 20;
numbers[2] = 30;
numbers[3] = 40;
numbers[4] = 50;
numbers[5] = 60;
numbers[6] = 70;
numbers[8] = 90;

Console.WriteLine("!!!!!!!!!!!!!!! Length !!!!!!!!!!!!!!!");
Console.WriteLine(numbers.Length);
Console.WriteLine("!!!!!!!!!!!!!!! Specific Index !!!!!!!!!!!!!!!");
Console.WriteLine(numbers[3]);


Console.WriteLine("!!!!!!!!!!!!!!! Loop in Array !!!!!!!!!!!!!!!");

Console.WriteLine("!!!!!!!!!!!!!!! For Loop :");

for (int i=0; i < numbers.Length;i++) {
    Console.WriteLine("++++++++++++");
    Console.WriteLine($"Number at {i} : {numbers[i]}");
    Console.WriteLine("++++++++++++");
}

Console.WriteLine("!!!!!!!!!!!!!!! ForEach :");

foreach(int number in numbers)
{
    Console.WriteLine("++++++++++++");
    Console.WriteLine(number);
}

numbers[7] = 80;
numbers[9] = 100;
//numbers[10] = 110; It Will Not allowd
//numbers[11] = 120;


Console.WriteLine("!!!!!!!!!!!!!!! ForEach :");

foreach (int number in numbers)
{
    Console.WriteLine("++++++++++++");
    Console.WriteLine(number);
}

Console.WriteLine("!!!!!!!!!!!!!!! Short Syntax !!!!!!!!!!!!!!!");

// string[] names = new string[12]; Long Syntax

// string[] names = new string[6] {"Hassan","Basit","Javed","Rehman","",""};

string[] names = { "Hassan", "Basit", "Javed", "Rehman", "Usman", "Islam" ,"Rehan","Waseem"};


foreach (string name in names)
{
    Console.WriteLine($"User Name : {name}");
}


Console.WriteLine("!!!!!!!!!!!!! Var Keyword !!!!!!!!!!!!!!");
var num1 = "Hello";

num1 = "World";

Console.WriteLine(num1.ToUpper());

Console.WriteLine("!!!!!!!!!!!!! Dynamic Keyword !!!!!!!!!!!!!!");

dynamic num2 = "Hello";

Console.WriteLine(num2) ;
num2 = 40;

Console.WriteLine(num2) ;

Console.WriteLine("!!!!!!!!!!!!! Object Keyword !!!!!!!!!!!!!!");

Object num3 = 50;
Console.WriteLine(num3);

num3 = "string";
Console.WriteLine(num3);

// Console.WriteLine(num3.ToUpper());
