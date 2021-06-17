void countApplesAndOranges(int s, int t, int a, int b, int apples_count, int* apples, int oranges_count, int* oranges)
{
    int landedApples = 0, landedOranges = 0;
    
    for (int i = 0; i < apples_count; i++)
    {
        int sum = apples[i] + a;
        
        if (sum >= s && sum <= t)
        {
            landedApples++;
        }
    }
    
    for (int i = 0; i < oranges_count; i++)
    {
        int sum = oranges[i] + b;
        
        if (sum >= s && sum <= t)
        {
            landedOranges++;
        }
    }
    
    printf("%d\n%d", landedApples, landedOranges);
}
