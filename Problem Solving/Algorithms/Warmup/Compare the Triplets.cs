using System.Collections.Generic;
using System.Linq;

class Solution
{
    List<int> compareTriplets(List<int> a, List<int> b)
    {
        return new List<int>()
        {
            a.Count(x => x > b[a.IndexOf(x)]),
            b.Count(x => x > a[b.IndexOf(x)])
        };
    }
}
