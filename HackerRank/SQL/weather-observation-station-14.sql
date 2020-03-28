select 
    convert(numeric(10,4),round(max(lat_n),4))
from station 
where lat_n < 137.2345
