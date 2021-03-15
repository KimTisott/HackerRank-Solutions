using System;
class Solution {
    string timeConversion(string s) {
        return DateTime.Parse(s).ToString("HH:mm:ss");
    }
}
