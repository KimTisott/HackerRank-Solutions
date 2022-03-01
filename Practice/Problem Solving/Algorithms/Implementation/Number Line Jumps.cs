class Solution
{
    string kangaroo(int x1, int v1, int x2, int v2)
    {
        return x2 > x1 && v1 > v2 && (x2 - x1) % (v1 - v2) == 0 ? "YES" : "NO";
    }
}
