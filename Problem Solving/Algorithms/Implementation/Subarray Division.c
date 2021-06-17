int birthday(int s_count, int* s, int d, int m)
{
    int result = 0, sum = 0;
    
    for (int i = 0; i <= s_count - m; i++)
    {
        for (int j = 0; j < m; j++)
        {
            sum += s[i + j];
        }
        
        if (sum == d)
        {
            result++;
        }
        
        sum = 0;
    }
    
    return result;
}
