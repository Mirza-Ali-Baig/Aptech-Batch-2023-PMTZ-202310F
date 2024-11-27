// !!!!!!!!!!!!!!!!!!!!!!!!!! Class 08 !!!!!!!!!!!!!!!!!!!!!!!!!
// !!!!!!!!!!!!!!!!!!!!!!!!!! Topics !!!!!!!!!!!!!!!!!!!!!!!!!
// Constructor Inheritance
// Getter & Setter
// Method Overriding
// Method Overloading
// Abstract & Interface
// Access Modifiers (public, Protected,Private)

namespace Class_08
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Abstract Abs = new Abstract();
            Admin admin = new Admin();
            admin.Evening("Usman");
            admin.Morning("Usman");
            Console.WriteLine("Hello, World!");

            Person2 p1=new Person2();

            p1.SayHi("Usman");

            User u1 = new User();
            u1.ID = 1;
            u1.getId();
            u1.ID = 5;
            u1.getId();
            double result= u1.Add(70.00);
            Console.WriteLine(result);
            result= u1.Add(70,5000);
            Console.WriteLine(result);

        }
    }

    sealed class Person
    {
        public void SayHi(string name)
        {
            Console.WriteLine($"Hi {name}");
        }
    }

    class Person2
    {
        public void SayHi(string name)
        {
            Console.WriteLine("Method Override");
        }
    }
    // Getter & Setter

    class User
    {
        private int id;
       public int ID
        {
            get
            {
                return id;
            }
            set
            {
                id = value;
            }
        }
        public string Name { get; set; } 


        public void getId()
        {
            Console.WriteLine("Private Property : "+ this.id);
        }


        public int Add(int num1)
        {
            return num1 + 50;
        }
        public int Add(int num1,int num2)
        {
            return num2 + num1;
        }  
        public int Add(int num1,int num2,int num3)
        {
            return num2 + num1 + num3;
        }
        public double Add(double num1)
        {
            return num1;
        }
    }
   
}