import sys
import ast
from simpson import calculate
  
# driver function 
n= ast.literal_eval(sys.argv[3])
a = ast.literal_eval(sys.argv[1])
b = ast.literal_eval(sys.argv[2])


integral_res = calculate(a,b,n) 
#print (n)
# rounding the final answer to 6 decimal places  
print (round(integral_res, 6)) 
  
# This code is contributed by Saloni. 