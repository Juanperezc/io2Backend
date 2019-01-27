
from normal import f


def calculate(a, b, n ): 
      
    interval_size = (float(b - a) / n) 
    sum = f(a) + f(b); 

    for i in range(1, n ): 
        if (i % 3 == 0): 
            sum = sum + 2 * f(a + i * interval_size) 
        else: 
            sum = sum + 3 * f(a + i * interval_size) 
      
    return ((float( 3 * interval_size) / 8 ) * sum ) 