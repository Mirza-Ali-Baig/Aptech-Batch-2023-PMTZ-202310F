using crud_app.Models;
using Microsoft.EntityFrameworkCore;

namespace crud_app.Context
{
    public class ApplicationDbContext : DbContext
    {

        public ApplicationDbContext(DbContextOptions options) : base(options)
        {
            
        }


        public DbSet<Employee> Employees { get; set; }
    }
}
