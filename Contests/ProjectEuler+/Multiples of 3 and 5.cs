using System;

class Solution
{
    static void Main(String[] args)
    {
        int t = Convert.ToInt32(Console.ReadLine());
        for (int a0 = 0; a0 < t; a0++)
        {
            int n = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine(Euler001((ulong)n));
        }
    }

    static ulong Euler001(ulong n)
    {
        var limit = n - 1;

        return TotalSum(limit, 3) + TotalSum(limit, 5) - TotalSum(limit, 15);
    }

    static ulong TotalSum(ulong limit, ulong multiple)
    {
        var count = limit / multiple;

        return multiple * count * (count + 1) >> 1;
    }
}
