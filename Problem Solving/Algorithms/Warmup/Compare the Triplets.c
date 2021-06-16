int* compareTriplets(int a_count, int* a, int b_count, int* b, int* result_count)
{
    *result_count = 2;
    
    int* result = calloc(*result_count, sizeof(int));
    
    for (int i = 0; i < a_count; i++)
    {
        result[0] += a[i] > b[i];
        result[1] += a[i] < b[i];
    }
    
    return result;
}
