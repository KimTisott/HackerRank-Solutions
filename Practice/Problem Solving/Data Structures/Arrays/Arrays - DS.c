int* reverseArray(int a_count, int* a, int* result_count)
{
    int* result = malloc(a_count * sizeof(result));
    
    for (int i = 0; i < a_count; i++)
    {
        result[i] = a[a_count - i - 1];
    }
    
    *result_count = a_count;
    
    return result;
}
