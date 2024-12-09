using System.Net.Http;

namespace Class_13
{
    internal class Program
    {
        static void  Main(string[] args)
        {
            //Console.WriteLine("Hello, World!");
            string url = "https://www.themealdb.com/api/json/v1/1/search.php?s=";

            //try
            //{

            //    HttpClient client = new HttpClient();
            //    HttpResponseMessage res = await client.GetAsync(url);

            //    if (res.IsSuccessStatusCode)
            //    {

            //        var data = await res.Content.ReadAsStringAsync();
            //        Console.WriteLine(data);
            //        //return data.ToString();
            //    } 
            //    else
            //    {
            //        Console.WriteLine("Error");
            //    }
            //}
            //catch (Exception ex)
            //{
            //    Console.WriteLine("Error");
            //    Console.WriteLine(ex.Message);
            //    //return "";
            //}
            APICall(url);
            Person person1 = new Person(20,"Hamza");
            person1.Greeting();

        }
        static async void APICall(string url)
        {

            try
            {

                HttpClient client = new HttpClient();
                HttpResponseMessage res = await client.GetAsync(url);

                if (res.IsSuccessStatusCode)
                {

                var data= await res.Content.ReadAsStringAsync();
                Console.WriteLine(data);
                    //return data.ToString();
                }
                else
                {
                    Console.WriteLine("Error");
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error");
                Console.WriteLine(ex.Message);
                //return "";
            }
        }
    }

    struct Person
    {
        // Properties
        // Methods
        // Constructor

        public string Name { get; set; }
        public readonly int age = 20;

        public Person(int age,string name)
        {
            this.age = age;
            this.Name = name;
        }

        public void Greeting()
        {
            Console.WriteLine("Hello Welcome "+ Name);
        }

        //public void setAge(int age)
        //{
        //    this.age = age;
        //}


    }
}