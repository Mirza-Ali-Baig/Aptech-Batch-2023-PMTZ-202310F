// !!!!!!!!!!!!!!!!!!!!!!!!! Class 06 !!!!!!!!!!!!!!!!!!!!!!!!!
// !!!!!!!!!!!!!!!!!!!!!!!!! Topics !!!!!!!!!!!!!!!!!!!!!!!!!
// Intoduction To OOPs
// Class and Object
// Properties and methods
// Constructor




namespace Class_06
{
    internal class Program
    {
        static void Main(string[] args)
        {
           Greeting greetingObj=new Greeting();
            greetingObj.morningGreet();
            greetingObj.nightGreet();


            Bank bank = new Bank();
            bank.Deposit(10000);
        }
    }
// !!!!!!!!!!!!!!!!!!!!!!!!! Create a Class Greeting !!!!!!!!!!!!!!!!!!!!!!!!!

    class Greeting
    {
        public void morningGreet()
        {
            Console.WriteLine("Hello Good Morning!!");
        }

        public void nightGreet()
        {
            Console.WriteLine("Hello Good Night!!");
        }
    }

    class Bank
    {
        public int AccountNumber = 329368736;
        public string AccountHolder = "Xyz";
        public double AccountBalance = 50000.00;


        public void  Deposit(double amount){
            //AccountBalance += ammount;
            AccountBalance = AccountBalance+ amount;
            Console.WriteLine("Ammount Successfully Deposit");
        }

    }
}