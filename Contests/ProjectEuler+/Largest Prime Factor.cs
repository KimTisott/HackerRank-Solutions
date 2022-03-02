using System;

class Solution
{
    static void Main(String[] args)
    {
        int t = Convert.ToInt32(Console.ReadLine());
        for (int a0 = 0; a0 < t; a0++)
        {
            long n = Convert.ToInt64(Console.ReadLine());
            Console.WriteLine(Euler003((ulong)n));
        }
    }

    static ulong Euler003(ulong n)
    {
        ulong result = n, counter = 2;

        while (counter * counter <= result)
        {
            if (result % counter == 0)
            {
                result /= counter;
            }
            else
            {
                counter++;
            }
        }

        return result;
    }
}