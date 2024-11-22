// !!!!!!!!!!!!!!!!!!!!!! Class 05 !!!!!!!!!!!!!!!!!!!!!!!!!!
// !!!!!!!!!!!!!!!!!!!!!! Topics !!!!!!!!!!!!!!!!!!!!!!!!!!
// Functions
// Function With Void Return Type
// Functions With Other Return Type
// Function With Perameters


// !!!!!!!!!!!!!!!!!!!!!! Create a Basic Function!!!!!!!!!!!!!!!!!!!!!!!!!!
//Console.WriteLine("!!!!!!!!!!!!!!!!!!!!!! Create a Basic Function!!!!!!!!!!!!!!!!!!!!!!!!!!");
comment("Create a Basic Function");
void greeting()
{
    Console.WriteLine("Hello World");
}

// !!!!!!!!!!!!!!!!!!!!!! Call a Basic Function!!!!!!!!!!!!!!!!!!!!!!!!!!
comment("Call a Basic Function");

greeting();
greeting();
greeting();
greeting();
greeting();
greeting();
greeting();
greeting();


// !!!!!!!!!!!!!!!!!!!!!!!! Function With Perameters !!!!!!!!!!!!!!!!!!!!!!!!
comment("Function With Perameters ");
void Add(int num1,int num2)
{
    Console.WriteLine(num1+num2);
}

comment("Call a Function With Perameters ");
Add(5403,3050);
//Add();
//Add();


comment("Create a Function With String Perameters ");
void sayHi(string name)
{
    Console.WriteLine($"Hi {name}");
}

comment("Call a Function With String Perameters ");

sayHi("Sajid");
sayHi("Basit");
sayHi("Ayesha");

void comment(string text)
{
    Console.WriteLine($"!!!!!!!!!!!!!!!!!!!!!!{text} !!!!!!!!!!!!!!!!!!!!!!!!!!");
}


comment("Functions With Other Return Type");

// Functions With Other Return Type

double divide(double num1, double num2)
{
    return num1 / num2;
}


Console.WriteLine(divide(10, 3)); 


string SayHello(string name)
{
    return $"Hello {name}";
}

Console.WriteLine(SayHello("Usman"));

string result = SayHello("Tariq");
Console.WriteLine(result);
