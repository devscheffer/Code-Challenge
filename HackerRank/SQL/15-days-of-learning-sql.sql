SELECT
    a.submission_date
    ,a.submission_id
    ,a.hacker_id
    ,a.score
    ,b.hacker_id
    ,b.name
FROM 
    Submissions a
left JOIN
    Hackers b
on a.hacker_id = b.hacker_id

select count(1)
from (
    select distinct a.submission_date
    from Submissions a) as t

select 
    a.submission_date
    ,count(a.hacker_id)
from Submissions a
group by 
    a.submission_date
order by a.submission_date

SELECT
    a.submission_date
    ,count(a.submission_id)
    ,b.hacker_id
    ,b.name
FROM 
    Submissions a
left JOIN
    Hackers b
on a.hacker_id = b.hacker_id
where a.submission_date = '2016-03-01'
group BY
    a.submission_date
    ,b.hacker_id
    ,b.name
having 
    count(a.submission_id) > 1


--Print total number of unique hackers who made at least submission each day (starting on the first day of the contest)

select 
    date
    ,count(id)
from (
    select 
        a.submission_date as date
        ,a.hacker_id as id
    from Submissions a
    group by 
        a.submission_date
        ,a.hacker_id
) as tab1
group by 
    date

--Find the hacker_id and name of the hacker who made maximum number of submissions each day.

select 
    tab2.date
    ,tab2.total_sub
    ,tab3.date
    ,tab3.id
    ,tab3.total_sub
from(
select
    date
    ,max(total_sub) as total_sub
from (
    select 
        a.submission_date as date
        ,a.hacker_id as id
        ,count(a.hacker_id) as total_sub
    from Submissions a
    group by 
        a.submission_date
        ,a.hacker_id 
    ) tab1
group by
    date
) tab2
left join (
    select 
        a.submission_date as date
        ,a.hacker_id as id
        ,count(a.hacker_id) as total_sub
    from Submissions a
    group by 
        a.submission_date
        ,a.hacker_id 
) tab3
on tab3.date = tab2.date
and tab3.total_sub = tab2.total_sub
order by tab2.date


--If more than one such hacker has a maximum number of submissions, print the lowest hacker_id. 

select 
    tab2.date
    ,tab2.total_sub
    ,min(tab3.id)
from(
select
    date
    ,max(total_sub) as total_sub
from (
    select 
        a.submission_date as date
        ,a.hacker_id as id
        ,count(a.hacker_id) as total_sub
    from Submissions a
    group by 
        a.submission_date
        ,a.hacker_id 
    ) tab1
group by
    date
) tab2
left join (
    select 
        a.submission_date as date
        ,a.hacker_id as id
        ,count(a.hacker_id) as total_sub
    from Submissions a
    group by 
        a.submission_date
        ,a.hacker_id 
) tab3
on tab3.date = tab2.date
and tab3.total_sub = tab2.total_sub
group by 
    tab2.date
    ,tab2.total_sub


--The query should print this information for each day of the contest, sorted by the date.

select 
    date1
    ,totalhackers
    ,hackerid
    ,Hackers.name
from (
    select 
        date1 as date1
        ,count(id) as totalhackers
    from (
        select distinct
            a.submission_date as date1
            ,a.hacker_id as id
        from Submissions a
        left join submissions b
        on a.hacker_id = b.hacker_id
        and a.submission_date >= b.submission_date 
        group by 
            a.submission_date 
            ,a.hacker_id 
        having
         count(distinct b.submission_date) = DATEDIFF(day,'2016-03-01',a.submission_date)+1
   ) as tab1
    group by date1
) tabf1
left join (
    select 
    tab2.date
    ,tab2.total_sub
    ,min(tab3.id) as hackerid
    from(
    select
        date
        ,max(total_sub) as total_sub
    from (
        select 
            a.submission_date as date
            ,a.hacker_id as id
            ,count(a.hacker_id) as total_sub
        from Submissions a
        group by 
            a.submission_date
            ,a.hacker_id 
        ) tab1
    group by
        date
    ) tab2
    left join (
        select 
            a.submission_date as date
            ,a.hacker_id as id
            ,count(a.hacker_id) as total_sub
        from Submissions a
        group by 
            a.submission_date
            ,a.hacker_id 
    ) tab3
    on tab3.date = tab2.date
    and tab3.total_sub = tab2.total_sub
    group by 
        tab2.date
        ,tab2.total_sub
) tabf2
on tabf1.date1 = tabf2.date
left join Hackers
on Hackers.hacker_id = tabf2.hackerid
order by
    date1
