using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.Collections;
using System.ComponentModel;
using System.Diagnostics.CodeAnalysis;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Runtime.Serialization;
using System.Text.RegularExpressions;
using System.Text;
using System;
class Result {
    public static int diagonalDifference(List<List<int>> arr) {
        return Math.Abs(arr.Sum(x => x[arr.IndexOf(x)]) - arr.Sum(x => x[arr.Count - arr.IndexOf(x) - 1]));
    }
}
class Solution {
    public static void Main(string[] args) {
        int n = Convert.ToInt32(Console.ReadLine().Trim());
        List<List<int>> arr = new List<List<int>>();
        for (int i = 0; i < n; i++)
            arr.Add(Console.ReadLine().TrimEnd().Split(' ').ToList().Select(arrTemp => Convert.ToInt32(arrTemp)).ToList());
        int result = Result.diagonalDifference(arr);
        TextWriter textWriter = new StreamWriter(@System.Environment.GetEnvironmentVariable("OUTPUT_PATH"), true);
        textWriter.WriteLine(result);
        textWriter.Flush();
        textWriter.Close();
    }
}
