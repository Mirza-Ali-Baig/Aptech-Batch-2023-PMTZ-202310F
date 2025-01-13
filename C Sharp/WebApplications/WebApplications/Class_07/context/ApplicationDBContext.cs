using Class_07.Models;
using Microsoft.EntityFrameworkCore;

namespace Class_07.context
{
    public class ApplicationDBContext : DbContext
    {

        public ApplicationDBContext(DbContextOptions options) :base(options)
        {
            
        }

        public DbSet<Student> Students { get; set; }
    }
}
