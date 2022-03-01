int greatest_common_divisor(int a, int b)
{
    while (b != 0)
    {
        int temp = a % b;

        a = b;

        b = temp;
    }

    return a;
}

int least_common_multiple(int a, int b)
{
    return a * b / greatest_common_divisor(a, b);
}

int getTotalX(int a_count, int* a, int b_count, int* b)
{
    int result = 0, min = 100, max = 1;
    
    for (int i = 0; i < a_count; i++)
    {
        if (a[i] > max)
        {
            max = a[i];
        }
    }
    
    for (int i = 0; i < b_count; i++)
    {
        if (b[i] < min)
        {
            min = b[i];
        }
    }
    
    int lcm = max, gcd = min;
    
    for (int i = 0; i < a_count; i++)
    {
        lcm = least_common_multiple(lcm, a[i]);
    }
    
    for (int i = 0; i < b_count; i++)
    {
        gcd = greatest_common_divisor(gcd, b[i]);
    }
    
    for (int i = lcm; i <= gcd; i += lcm)
    {
        if (gcd % i == 0)
        {
            result++;
        }
    }
    
    return result;
}
