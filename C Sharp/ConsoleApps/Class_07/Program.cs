// !!!!!!!!!!!!!!!!!!!! Class 07 !!!!!!!!!!!!!!!!!!!! 
// !!!!!!!!!!!!!!!!!!!! Topics !!!!!!!!!!!!!!!!!!!!
// Constructor
// Inheritance


using System.Xml.Linq;

namespace Class_07
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Creating Object
            Student s1 = new Student(1, "Basit", 22);
            s1.info();
            Student s2 = new Student(2, "Daniyal", 24);
            s2.Id = 2;
            s2.Name = "Daniyal";
            s2.Age = 20;
            s2.info();
            Student s3 = new Student(3, "Kashif", 24);
            //s3.Id = 3;
            //s3.Name = "Kashif";
            //s3.Age = 24;
            //s3.info();

            Teacher t1=new Teacher(5,"somthing",30);

            t1.info();

        }
    }

    class Student
    {
        public int Id=1;
        public string Name = "Basit";
        public int Age = 22;


        public Student(int id, string name, int age)
        {
            Console.WriteLine("Constructor Called");
            this.Name = name;
            Id = id;
            Age = age;
        }
        public void info()
        {
            Console.WriteLine("!!!!!!!!!! Student Info !!!!!!!!!!!!!!!!");
            Console.WriteLine($"Student Id : {Id}");
            Console.WriteLine($"Student Name : {Name}");
            Console.WriteLine($"Student Age : {Age}");
        }
    }

    class Teacher : Student
    {
        public string TeacherName = "Khan";
       

        public Teacher(int id, string name, int age):base(id,name,age)
        {
            base.info();
        }

        public void info()
        {
            Console.WriteLine("!!!!!!!!!! Teacher Info !!!!!!!!!!!!!!!!");
            Console.WriteLine($"Teacher Name : {TeacherName}");
            base.info();
        }
    }
}