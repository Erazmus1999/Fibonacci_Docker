namespace Fibonacci_Docker
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("What element would you like to display?");
            int n = Convert.ToInt32(Console.ReadLine());
            int var = Fibo(n);
            Console.WriteLine($"This element is:{var}");
            Console.WriteLine("Fibonacci_Docker");
            Console.WriteLine("Jan Erazmus");
            Console.WriteLine("1.2");

        }

        static int Fibo(int number)
        {
            if (number == 0)
                return 0;
            if (number == 1)
                return 1;
            else
                return Fibo(number - 1) + Fibo(number - 2);
        }

    }
}