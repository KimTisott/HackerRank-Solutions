using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
class Solution {
    static int simpleArraySum(int[] ar) {
        return ar.Sum();
    }
    static void Main(string[] args) {
        int arCount = Convert.ToInt32(Console.ReadLine());
        int[] ar = Array.ConvertAll(Console.ReadLine().Split(' '), arTemp => Convert.ToInt32(arTemp));
        int result = simpleArraySum(ar);
        TextWriter textWriter = new StreamWriter(@System.Environment.GetEnvironmentVariable("OUTPUT_PATH"), true);
        textWriter.WriteLine(result);
        textWriter.Flush();
        textWriter.Close();
    }
}
