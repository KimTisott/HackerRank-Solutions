int diagonalDifference(int arr_rows, int arr_columns, int** arr)
{
    int result = 0;
    
    for (int i = 0; i < arr_rows; i++)
    {
        result += arr[i][i] - arr[i][arr_rows - i - 1];
    }
    
    return abs(result);
}
