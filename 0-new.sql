-- harry-potter-and-wands
select 
    a.id 
    ,b.age 
    ,a.coins_needed
    ,a.power 
from Wands a 
left join Wands_Property b
on a.code = b.code
where b.is_evil = 0
order by 
    a.power desc 
    ,b.age desc 