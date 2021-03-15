using System;
using System.Linq;
class Solution {
    void miniMaxSum(int[] arr) {
        var orderedArr = arr.OrderBy(x => x);
        Console.WriteLine($"{orderedArr.Take(4).Sum(x => Convert.ToInt64(x))} {(long)orderedArr.Skip(1).Take(4).Sum(x => Convert.ToInt64(x))}");
    }
}
