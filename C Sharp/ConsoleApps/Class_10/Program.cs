using System.Collections;
using System.Collections.Generic;

namespace Class_10
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // !!!!!!!!!!!!!!!!! Class 10 !!!!!!!!!!!!!!!!!!!!!
            // !!!!!!!!!!!!!!!!! Topics !!!!!!!!!!!!!!!!!!!!!
            // Collections
            // Non Generic Collections
            // ArrayList
            // HashTable
            // SortedList
            // Stack
            // Queue
            // Generic Collections
            // List
            // Dictionary
            // Stack
            // Queue

            Console.WriteLine("!!!!!!!!!!!!!!!!! Non Generic Collections !!!!!!!!!!!!!!!!!!!!!");
            Console.WriteLine("!!!!!!!!!!!!!!!!! ArrayList !!!!!!!!!!!!!!!!!!!!!");
            ArrayList arrayList = new ArrayList();
            arrayList.Add(20);
            arrayList.Add("Basit");
            arrayList.Add(30);
            arrayList.Add("JavaScript");
            arrayList.Add("03675875465");

            Console.WriteLine("!!!!!!!!!!!!!!!!! ArrayList For Loop !!!!!!!!!!!!!!!!!!!!!");
            Console.WriteLine(arrayList[0]);

            for (int i = 0; i < arrayList.Count; i++)
            {
                Console.WriteLine(arrayList[i]);
            }
            Console.WriteLine("!!!!!!!!!!!!!!!!! ArrayList ForEach Loop !!!!!!!!!!!!!!!!!!!!!");

            foreach (object item in arrayList)
            {
                Console.WriteLine($"Arralist :  {item}");
            }

            Console.WriteLine("!!!!!!!!!!!!!!!!! HashTable !!!!!!!!!!!!!!!!!!!!!");
            Hashtable ht = new Hashtable();

            ht.Add("id", 1);
            ht.Add("name", "Islam");
            ht.Add("age", 25);
            ht.Add("course", "Python");
            ht.Add("email", "islam@gmail.com");

            Console.WriteLine(ht["name"]);
            Console.WriteLine("!!!!!!!!!!!!!!!!! HashTable ForEach  !!!!!!!!!!!!!!!!!!!!!");

            foreach (DictionaryEntry item in ht)
            {
                Console.WriteLine(item.Key);
                Console.WriteLine($" Key : {item.Key} : Value : {item.Value}");
            }
            Console.WriteLine("!!!!!!!!!!!!!!!!! Stack !!!!!!!!!!!!!!!!!!!!!");
            Console.WriteLine("!!!!!!!!!!!!!!!!! LIFO :( Last In First Out ) !!!!!!!!!!!!!!!!!!!!!");

            Stack stack = new Stack();

            stack.Push(20);
            stack.Push(40);
            stack.Push(60);
            stack.Push(80);
            stack.Push(100);

            Console.WriteLine("!!!!!!!!!!!!!!!!! Stack ForEach !!!!!!!!!!!!!!!!!!!!!");

            foreach (object item in stack)
            {
                Console.WriteLine(item);
            }

            Console.WriteLine("!!!!!!!!!!!!!!!!! Queue !!!!!!!!!!!!!!!!!!!!!");
            Console.WriteLine("!!!!!!!!!!!!!!!!! FIFO : ( First In First Out ) !!!!!!!!!!!!!!!!!!!!!");

            Queue queue = new Queue();

            queue.Enqueue(20);
            queue.Enqueue(40);
            queue.Enqueue(60);
            queue.Enqueue(80);
            queue.Enqueue(100);

            Console.WriteLine(queue.Peek());
            Console.WriteLine(queue.Dequeue());

            Console.WriteLine("!!!!!!!!!!!!!!!!! Queue ForEach !!!!!!!!!!!!!!!!!!!!!");
            foreach (object item in queue)
            {
                Console.WriteLine(item);
            }

            Console.WriteLine("!!!!!!!!!!!!!!!!! Generic Collections !!!!!!!!!!!!!!!!!!!!!");
            Console.WriteLine("!!!!!!!!!!!!!!!!! List !!!!!!!!!!!!!!!!!!!!!");

            List<int> numbers=new List<int>();
            numbers.Add(10);
            numbers.Add(20);
            numbers.Add(30);
            numbers.Add(40);
            Console.WriteLine("!!!!!!!!!!!!!!!!! List ForEach !!!!!!!!!!!!!!!!!!!!!");

            foreach (int item in numbers)
            {
                Console.WriteLine(item);
            }

            List<string> names=new List<string>();
            names.Add("Rehan");
            names.Add("Ramzan");
            names.Add("Rizwan");

            Console.WriteLine(names[1]);

            Employee e1 = new Employee(1,"Talha",20);
            Employee e2 = new Employee(2,"Ahmed",23);
            Employee e3 = new Employee(3,"Siddiq",22);

            List<Employee> employees = new List<Employee>() { 
                e1,
                e2,
                e3,
            };
            //employees.Add(e1);
            //employees.Add(e2);
            //employees.Add(e3);

            foreach (Employee item in employees)
            {
                Console.WriteLine($"ID  : {item.id} : Name : {item.name} : Age : {item.age}");
            }
            Console.WriteLine("!!!!!!!!!!!!!!!!! Dictionary !!!!!!!!!!!!!!!!!!!!!");

            Dictionary<string,string> keyValuePairs = new Dictionary<string, string>();

            keyValuePairs.Add("id", "1");
            keyValuePairs.Add("name", "Usman");
            keyValuePairs.Add("age", "20");

            int id= Convert.ToInt32(keyValuePairs["id"]);

            Console.WriteLine("!!!!!!!!!!!!!!!!! Dictionary ForEach !!!!!!!!!!!!!!!!!!!!!");
            Console.WriteLine(id);
            foreach(var item in keyValuePairs)
            {
                Console.WriteLine(item.Key);
            }

            Console.WriteLine("!!!!!!!!!!!!!!!!! Stack In Generic Collections !!!!!!!!!!!!!!!!!!!!!");
            Stack<double> salaries = new Stack<double>();

            salaries.Push(50000.00);
            salaries.Push(70000.00);
            salaries.Push(65000.00);

            Console.WriteLine("!!!!!!!!!!!!!!!!! Queue In Generic Collections !!!!!!!!!!!!!!!!!!!!!");

            Queue<int> ids = new Queue<int>();

            ids.Enqueue(1);
            ids.Enqueue(2);
            ids.Enqueue(3);
            ids.Enqueue(4);
            ids.Enqueue(5);

            foreach (int number in ids)
            {
                Console.WriteLine(number);
            }

        }
    }

    class Employee
    {
        public int id;
        public string name;
        public int age;

        public Employee(int id, string name, int age)
        {
            this.id = id;
            this.name = name;
            this.age = age;
        }
    }
}