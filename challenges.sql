
select 
    a.hacker_id
    ,a.name
    ,count(b.challenge_id) totalChallenge
from hackers a 
left join challenges b 
    on a.hacker_id = b.hacker_id
group by 
    a.hacker_id
    ,a.name
having 
    count(b.challenge_id) = (
        select max(totalChallenge) 
        from (select 
                a.hacker_id
                ,a.name
                ,count(b.challenge_id) totalChallenge
            from hackers a 
            left join challenges b 
                on a.hacker_id = b.hacker_id
            group by 
                a.hacker_id
                ,a.name) as tab2
    )
    or count(b.challenge_id) in (
        select 
            totalChallenge
        from (
            select 
                a.hacker_id
                ,a.name
                ,count(b.challenge_id) totalChallenge
            from hackers a 
            left join challenges b 
                on a.hacker_id = b.hacker_id
            group by 
                a.hacker_id
                ,a.name
        ) as tab1
        group by totalChallenge
        having 
            count(*) = 1
    )
order by 
    count(b.challenge_id) desc 
    ,a.hacker_id