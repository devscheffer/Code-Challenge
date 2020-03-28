select DISTINCT
    city
    from station 
    where city not like '%[aeiou]'