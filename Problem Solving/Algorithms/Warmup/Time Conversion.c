char* timeConversion(char* s)
{
    char *result = s;
    
    if (s[0] == '1' && s[1] == '2')
    {
        result[0] = result[1] = '0';
    }
    
    if (s[8] == 'P')
    {
        result[0] += 1;
        
        if (result[1] < '8')
        {
            result[1] += 2;
        }
        else
        {
            result[0] += 1;
            
            result[1] -= 8;
        }
    }
    
    result[strlen(s)-2] = '\0';
    
    return result;
}
