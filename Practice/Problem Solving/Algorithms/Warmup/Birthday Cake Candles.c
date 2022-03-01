int birthdayCakeCandles(int candles_count, int* candles)
{
    int result = 0, max = 0;
    
    for (int i = 0; i < candles_count; i++)
    {
        if (candles[i] > max)
        {
            result = 1;
            
            max = candles[i];
        }
        else if (candles[i] == max)
        {
            result++;
        }
    }
    
    return result;
}
