using System.Collections.Generic;
using System.Linq;

class Solution
{
    int birthdayCakeCandles(List<int> candles)
    {
        var max = candles.Max();
        
        return candles.Count(x => x == max);
    }
}
