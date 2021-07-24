using System;
using System.Linq;

class Solution
{
    void plusMinus(int[] arr)
    {
        var total = arr.Count();
        
        Console.WriteLine(((double)arr.Count(x => x > 0) / total).ToString("N6"));
        
        Console.WriteLine(((double)arr.Count(x => x < 0) / total).ToString("N6"));
        
        Console.WriteLine(((double)arr.Count(x => x == 0) / total).ToString("N6"));
    }
}
