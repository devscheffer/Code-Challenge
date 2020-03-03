select 
    b.continent
    ,avg(a.population) 
from city a
left join country b 
on a.countrycode = b.code 
where b.continent is not null
group by b.continent
