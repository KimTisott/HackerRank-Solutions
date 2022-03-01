int* gradingStudents(int grades_count, int* grades, int* result_count)
{
    int* result = malloc(grades_count * sizeof(result));
    
    for (int i = 0; i < grades_count; i++)
    {
        int modulo = grades[i] % 5;
        
        if (grades[i] < 38 || modulo < 3)
        {
            result[i] = grades[i];
        }
        else
        {
            result[i] = grades[i] + 5 - modulo;
        }
    }
    
    *result_count = grades_count;
    
    return result;
}
