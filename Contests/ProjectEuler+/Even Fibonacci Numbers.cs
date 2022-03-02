using System;

class Solution
{
    static void Main(String[] args)
    {
        int t = Convert.ToInt32(Console.ReadLine());
        for (int a0 = 0; a0 < t; a0++)
        {
            long n = Convert.ToInt64(Console.ReadLine());
            Console.WriteLine(Euler002((ulong)n));
        }
    }

    static ulong Euler002(ulong n)
    {
        ulong previous = 2, current = 8, next;

        while (current <= n)
        {
            next = previous + (current << 2);
            previous = current;
            current = next;
        }

        return (previous + current - 2) >> 2;
    }
}