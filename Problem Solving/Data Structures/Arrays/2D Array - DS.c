int hourglassSum(int arr_rows, int arr_columns, int** arr)
{
    int result = -63;
    
    for (int i = 0; i < arr_rows - 2; i++)
    {
        for (int j = 0; j < arr_columns - 2; j++)
        {
            int sum = arr[i][j] + arr[i][j+1] + arr[i][j+2] + arr[i+1][j+1] + arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2];
            
            if (sum > result)
            {
                result = sum;
            }
        }
    }
    
    return result;
}
