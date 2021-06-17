int* breakingRecords(int scores_count, int* scores, int* result_count)
{
    int *result = calloc(2, sizeof(result)), min = 100000001, max = -1;
    
    for (long i = 0; i < scores_count; i++)
    {
        if (scores[i] < min)
        {
            min = scores[i];
            
            result[1]++;
        }
        if (scores[i] > max)
        {
            max = scores[i];
            
            result[0]++;
        }
    }
    
    result[0]--;
    result[1]--;
    
    *result_count = 2;
    
    return result;
}
