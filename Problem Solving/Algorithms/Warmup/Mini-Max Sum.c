void miniMaxSum(int arr_count, int* arr)
{
    long sum = 0, max = 0, min = 1000000000;
    
    for (int i = 0; i < arr_count; i++)
    {
        sum += arr[i];
        
        if (arr[i] > max)
        {
            max = arr[i];
        }
        
        if (arr[i] < min)
        {
            min = arr[i];
        }
    }
    
    printf("%ld %ld", sum - max, sum - min);
}
