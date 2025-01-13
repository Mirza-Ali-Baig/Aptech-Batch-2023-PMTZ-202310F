using System.ComponentModel.DataAnnotations;

namespace Class_07.Models
{
    public class Student
    {
        [Key]
        public int Id { get; set; }

        public string Name { get; set; }
        public string Email { get; set; }
        public int Age { get; set; }
    }
}
