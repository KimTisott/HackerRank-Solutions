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
class Solution {
    static List<int> compareTriplets(List<int> a, List<int> b) {
        return new List<int>() { 
            a.Count(x => x > b[a.IndexOf(x)])
          , b.Count(x => x > a[b.IndexOf(x)]) 
        };
    }
    static void Main(string[] args) {
        List<int> a = Console.ReadLine().TrimEnd().Split(' ').ToList().Select(aTemp => Convert.ToInt32(aTemp)).ToList();
        List<int> b = Console.ReadLine().TrimEnd().Split(' ').ToList().Select(bTemp => Convert.ToInt32(bTemp)).ToList();
        List<int> result = compareTriplets(a, b);
        TextWriter textWriter = new StreamWriter(@System.Environment.GetEnvironmentVariable("OUTPUT_PATH"), true);
        textWriter.WriteLine(String.Join(" ", result));
        textWriter.Flush();
        textWriter.Close();
    }
}
