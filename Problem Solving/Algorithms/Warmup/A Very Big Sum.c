long aVeryBigSum(int ar_count, long* ar)
{
    long result = 0;
    
    for (int i = 0; i < ar_count; i++)
    {
        result += ar[i];
    }
    
    return result;
}
