select 
    CONCAT(Name,'(',SUBSTRING(Occupation,1,1),')')
from Occupations
order by Name;

select 
concat('There are a total of ',count(name),' ', lower(Occupation),'s.')
from Occupations
group BY
    Occupation
order by
    count(name)
    ,Occupation;