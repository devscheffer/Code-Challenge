select 
convert(int,
        CEILING(avg(convert(float,salary)) 
        - avg(convert(float,replace(salary,0,'')))) ) 
from employees