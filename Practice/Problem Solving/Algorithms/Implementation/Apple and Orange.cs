using System;
using System.Linq;

class Solution
{
    void countApplesAndOranges(int s, int t, int a, int b, int[] apples, int[] oranges)
    {
        Console.WriteLine(apples.Count(x => x + a >= s && x + a <= t));
        
        Console.WriteLine(oranges.Count(x => x + b >= s && x + b <= t));
    }
}
