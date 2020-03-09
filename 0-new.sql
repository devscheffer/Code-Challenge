select 
    a.x 
    ,a.y
from Functions a
join Functions b
    on a.x = b.x
    and a.y = b.y
order by 
    a.x asc