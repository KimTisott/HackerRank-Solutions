using System.Collections.Generic;
using System.Linq;

class Solution
{
    int getTotalX(List<int> a, List<int> b)
    {
        int result = 0, counter = 1, aMax = a.Max(), bMin = b.Min(), aMaxMultiple = aMax;
        
        while (aMaxMultiple <= bMin)
        {
            var isFactor = true;
            
            foreach (var item in a)
            {
                if (aMaxMultiple % item != 0)
                {
                    isFactor = false;
                    
                    break;
                }
            }
            
            if (isFactor)
            {
                foreach (var item in b)
                {
                    if (item % aMaxMultiple != 0)
                    {
                        isFactor = false;
                        
                        break;
                    }
                }
            }
            
            if (isFactor)
            {
                result++;
            }
            
            counter++;
            
            aMaxMultiple = aMax * counter;
        }
        
        return result;
    }
}
