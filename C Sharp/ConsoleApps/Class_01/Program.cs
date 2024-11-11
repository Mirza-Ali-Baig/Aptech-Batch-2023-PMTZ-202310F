
// Singleline Comment
// Class 01

/* 
 
    Multiline comment 
 
*/



Console.WriteLine("Hello World!!");

// !!!!!!!!!!!!!!!!!!!!!!!!! Variables in C# !!!!!!!!!!!!!!!!!!!!!!!!!

// datatype name=value

// Numbers Datatypes (int, long ,byte, decimal, double,float )
// String Datatypes (string,char)
// Other Datatypes (bool, Object, dynamic,var)


int age = 20;
age = 20;
string name = "Class 01";
double salary = 40000.00;
decimal percentage = 65.444M;
char test= 'A';
Console.WriteLine(age);
Console.WriteLine(name);
Console.WriteLine(salary);
Console.WriteLine(percentage);
Console.WriteLine(test);



// !!!!!!!!!!!!!!!!!!!!!!!!! MIN & MAX Value of Datatypes !!!!!!!!!!!!!!!!!!!!!!!!!

Console.WriteLine("!!!!!!!!!!!!!!!! INT !!!!!!!!!!!!!!!!");
Console.WriteLine(int.MaxValue);
Console.WriteLine(int.MinValue);

Console.WriteLine("!!!!!!!!!!!!!!!! LONG !!!!!!!!!!!!!!!!");
Console.WriteLine(long.MaxValue);
Console.WriteLine(long.MinValue);


Console.WriteLine("!!!!!!!!!!!!!!!! BYTE !!!!!!!!!!!!!!!!");
Console.WriteLine(byte.MaxValue);
Console.WriteLine(byte.MinValue);


Console.WriteLine("!!!!!!!!!!!!!!!! DOUBLE !!!!!!!!!!!!!!!!");
Console.WriteLine(double.MaxValue);
Console.WriteLine(double.MinValue);

Console.WriteLine("!!!!!!!!!!!!!!!! CHAR !!!!!!!!!!!!!!!!");
Console.WriteLine(char.MaxValue);
Console.WriteLine(char.MinValue);


const int number = 10;

// number = 20; it will give error 


// Hello my name somthing and I am somthing year Old
Console.WriteLine("Hello my name "+name+" and I am "+age+" year Old");

