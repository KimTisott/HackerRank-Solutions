void plusMinus(int arr_count, int* arr)
{
    float positive = 0, negative = 0, zeros = 0;
    
    for (int i = 0; i < arr_count; i++)
    {
        if (arr[i] > 0)
        {
            positive++;
        }
        else if (arr[i] < 0)
        {
            negative++;
        }
        else
        {
            zeros++;
        }
    }
    
    printf("%f\n%f\n%f", positive / arr_count, negative / arr_count, zeros / arr_count);
}
