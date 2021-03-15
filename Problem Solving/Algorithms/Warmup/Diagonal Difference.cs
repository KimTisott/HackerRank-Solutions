using System;
using System.Collections.Generic;
using System.Linq;
class Solution {
    int diagonalDifference(List<List<int>> arr) {
        return Math.Abs(arr.Sum(x => x[arr.IndexOf(x)]) - arr.Sum(x => x[arr.Count - arr.IndexOf(x) - 1]));
    }
}
