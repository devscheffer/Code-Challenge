select 
    n
    ,CASE
        when p is null
            then 'Root'
        when n in (select distinct p from bst)
            then 'Inner'
        else 'Leaf'
    end
from BST
order by n
