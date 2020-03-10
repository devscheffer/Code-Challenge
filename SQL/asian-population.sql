select 
    sum(a.population) 
from city a
left join country b 
on a.countrycode = b.code 
where b.continent = 'Asia'

