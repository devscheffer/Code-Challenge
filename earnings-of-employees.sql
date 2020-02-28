/*
 Write a query to find the maximum total earnings for all employees 
 as well as the total number of employees who have maximum total earnings. 
 Then print these values as space-separated integers.
*/

select 
    max(salary*months) as 'maximum total earnings'
    ,count(*)
from employee
where salary*months = (select max(salary*months) from employee)
