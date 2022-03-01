using System;

class Solution
{
    void staircase(int n)
    {
        for (int i = 1; i <= n; i++)
        {
            Console.WriteLine(new String(' ', n - i) + new String('#', i));
        }
    }
}
