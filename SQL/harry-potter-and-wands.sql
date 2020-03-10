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
and a.coins_needed = (
    select min(coins_needed)
    from Wands a2 
    left join Wands_Property b2
    on a2.code = b2.code 
    where a2.power = a.power 
    and b2.age = b.age
)
order by 
    a.power desc 
    ,b.age desc 
