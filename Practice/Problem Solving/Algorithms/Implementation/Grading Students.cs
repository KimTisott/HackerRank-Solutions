using System;
using System.Collections.Generic;
using System.Linq;

class Solution
{
    List<int> gradingStudents(List<int> grades)
    {
        return grades.Select(x => x >= 38 && x % 5 > 2 ? (int)Math.Round(x / 5.0) * 5 : x).ToList();
    }
}
