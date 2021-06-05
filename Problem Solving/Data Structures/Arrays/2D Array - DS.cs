using System.Collections.Generic;
using System.Linq;
class Solution {
    int hourglassSum(List<List<int>> arr) {
        return Enumerable.Range(0, 4).SelectMany(x => Enumerable.Range(0, 4).Select(y => arr[x][y] + arr[x][y+1] + arr[x][y+2] + arr[x+1][y+1] + arr[x+2][y] + arr[x+2][y+1] + arr[x+2][y+2])).Max();
    }
}
