using System.IO;

namespace Class_12
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // !!!!!!!!!!!!!!!!!!! Class 12 !!!!!!!!!!!!!!!!!!!!!!!
            // !!!!!!!!!!!!!!!!!!! Topics !!!!!!!!!!!!!!!!!!!!!!!
            // File Handling in c#
            // Exists
            // Create
            // Read
            // Move
            // Copy
            // Write
            // Delete
            //Console.Write("Somthing");   
            //Console.Write("Somthing Else");

            string path = @"C:\Users\Admin\Documents\demo.txt";
            string path2 = @"C:\Users\Admin\Desktop\demo.txt";

            try
            {
                if (File.Exists(path))
                {
                    Console.WriteLine("File Found");

                }
                else
                {
                    File.Create(path);
                    Console.WriteLine("File Not Found");

                }
            }
            catch (Exception e)
            {

                Console.WriteLine(e.Message); ;
            }

            if (File.Exists(path))
            {
               string[] fileText=  File.ReadAllLines(path);
                //string fileText=  File.ReadAllText(path);

                foreach (string text in fileText)
                {
                    Console.WriteLine(text + "\n");
                }

            }

            if (File.Exists(path)){
                File.Move(path, path2,true);
              
            }

            if(File.Exists(path2)) {
                    File.Copy(path2 , path,true);            
            }
            

            if(File.Exists(path2))
            {
                File.WriteAllText(path2, "Write Using C#");

                File.AppendAllText(path2, "\n2nd Line");
            }



            if (File.Exists(path2))
            {
              File.Delete(path2);
            }



            Console.WriteLine("Hello, World!");
        }
    }
}