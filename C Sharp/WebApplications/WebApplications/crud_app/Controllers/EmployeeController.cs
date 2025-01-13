using crud_app.Context;
using crud_app.Models;
using Microsoft.AspNetCore.Mvc;

namespace crud_app.Controllers
{
    public class EmployeeController : Controller
    {

        private readonly ApplicationDbContext applicationDbContext;

        public EmployeeController(ApplicationDbContext context)
        {
            applicationDbContext = context;
        }
        public IActionResult Index()
        {
            var employees = applicationDbContext.Employees.ToList();
            return View(employees);
        }
      
        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Create(Employee employee)
        {
            applicationDbContext.Employees.Add(employee);
            applicationDbContext.SaveChanges();
            return RedirectToAction("index");
        }
    }
}
