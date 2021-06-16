int simpleArraySum(int ar_count, int* ar)
{
    int result = 0;
    
    for (int i = 0; i < ar_count; i++)
    {
        result += ar[i];
    }
    
    return result;
}
