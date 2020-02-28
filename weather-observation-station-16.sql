select 
    convert(numeric(10,4),round(min(lat_n),4))
from station 
where lat_n > 38.7780