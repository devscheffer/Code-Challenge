select 
    std.name 
from students std
left join packages pkg
    on std.id = pkg.id
left join (
    select 
        frd.friend_id  
        ,pkg.salary 
        ,frd.id
    from friends frd
    left join packages pkg
        on frd.friend_id = pkg.id
) as frdTab
    on frdTab.id = std.id
where 
    pkg.salary - frdTab.salary < 0
order by 
    frdTab.salary