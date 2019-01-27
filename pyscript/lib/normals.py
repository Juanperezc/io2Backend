import sys
import ast
from simpson import calculate
  

n= ast.literal_eval(sys.argv[3])
a = ast.literal_eval(sys.argv[1])
b = ast.literal_eval(sys.argv[2])


integral_res = calculate(a,b,n) 

print (round(integral_res, 8)) 
  
