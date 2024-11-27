using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Class_08
{
    internal class Abstract
    {
    }

    abstract class AGreeting
    {

        public abstract void Morning(string name);

        public void Evening(string name)
        {
            Console.WriteLine($"Hello {name} Good Evening !!!");
        }
    }

    class Admin : AGreeting
    {


        public override void Morning(string name)
        {
            
            Console.WriteLine($"Hello {name} Good Morning !!!");
        }
    }

    interface IGreeting
    {
        public void Evening(string name);
        public void Night(string name);
    }

    class Human : IGreeting
    {
        public void Evening(string name)
        {
            Console.WriteLine($"Hello {name} Good Morning !!!");
        }

        public void Night(string name)
        {
            Console.WriteLine($"Hello {name} Good Night !!!");
        }
    }
}
