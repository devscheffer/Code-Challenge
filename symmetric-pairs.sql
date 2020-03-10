select 
    a.x
    ,a.y
from Functions a
join Functions b
    on a.x = b.y
    and a.y = b.x
    and a.x <> b.x 
    and a.y <> b.y
where 
    a.x < b.x
union 
select 
    a.x 
    ,a.y
from Functions a
join Functions b
    on a.x = b.y
    and a.y = b.x
    and a.x = b.x 
    and a.y = b.y
group by 
    a.x 
    ,a.y
having 
    count(*) > 1
order by 
    a.x asc