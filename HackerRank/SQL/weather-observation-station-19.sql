select 
    convert(numeric(9,4),round(SQRT(power(a-b,2)+power(c-d,2)),4))
from (
    select 
        min(lat_n) as a
        ,min(long_w) as c 
        ,max(lat_n) as b
        ,max(long_w) as d
    from station
) as tab1
