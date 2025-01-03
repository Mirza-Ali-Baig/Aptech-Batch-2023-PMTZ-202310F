using Class_04.Models;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace Class_04.Controllers
{
    public class HomeController : Controller
    {

        public HomeController()
        {
        }

        public IActionResult Index()
        {
            ViewData["data1"] = "Basit";


            // ViewBag
            ViewBag.hello = "World ";


            ViewBag.users = new List<string>() { "Waseem","Waqar","Haris" };

            // Temp Data

            TempData["name"] = "Usman";

            TempData.Keep();
            return View();
        }

        public IActionResult Privacy()
        {
            TempData.Keep();
            return View();
        }
        public IActionResult Contact()
        {
            TempData.Keep();
            return View();
        }


        public IActionResult Details() 
        {
            List<Employee> employees = new List<Employee>() {
                new Employee(){Id=1,Name="Kashif",Email="Kashif@gmail.com",Salary=50000},
                new Employee(){Id=1,Name="Kashif",Email="Kashif@gmail.com",Salary=50000},
                new Employee(){Id=1,Name="Kashif",Email="Kashif@gmail.com",Salary=50000},
                new Employee(){Id=1,Name="Kashif",Email="Kashif@gmail.com",Salary=50000},
                new Employee(){Id=1,Name="Kashif",Email="Kashif@gmail.com",Salary=50000},
                new Employee(){Id=6,Name="Kashif",Email="Kashif@gmail.com",Salary=50000},
            };


            return View(employees);
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}