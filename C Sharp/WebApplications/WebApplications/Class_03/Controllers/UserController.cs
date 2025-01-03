using Microsoft.AspNetCore.Mvc;

namespace Class_03.Controllers
{
    public class UserController : Controller
    {
        public IActionResult Index()
        {
            // ViewData
            ViewData["data1"] = "Qasim";
            ViewData["data2"] = 25;


            List<Student> students = new List<Student>();
            students.Add(new Student(1, "Rehan", "rehan@gmail.com", 23));
            students.Add(new Student(2, "Rehan", "rehan@gmail.com", 23));
            students.Add(new Student(3, "Rehan", "rehan@gmail.com", 23));

            ViewData["students"]=students;

            return View();
        }

        public IActionResult About()
        {
            return View();
        }
    }


    class Student
    {
        public int id { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public int Age { get; set; }

        public Student(int id, string name, string email, int age)
        {
            this.id = id;
            this.Name = name;
            this.Email = email;
            this.Age = age;
        }
    }
}


// Razor Syntax
// Pass Data Controller To View
// ViewData
// ViewBag
// TempData
// Model Binding