/*
Julia asked her students to create some coding challenges. 
Write a query to print the hacker_id, name, and the total number of challenges created by each student. 
Sort your results by the total number of challenges in descending order. 
If more than one student created the same number of challenges, then sort the result by hacker_id. 
If more than one student created the same number of challenges and the count is less than the maximum number of challenges created, then exclude those students from the result.
*/

select 
    numberchallenge
    , count(a.hacker_id)
    ,a.hacker_id
    ,*
from hackers a 
    join (
        select 
            numberchallenge
            , count(hacker_id)
            ,hacker_id
        from(
            select
                a.hacker_id
                ,a.name
                ,count(b.challenge_id) numberchallenge    
            from hackers a1 
            left join Challenges b
                on a1.hacker_id = b.hacker_id
            group by
                a1.hacker_id
                ,a1.name
        ) as numberchallengetab
        group by 
            numberchallenge
            ,hacker_id
        having count(hacker_id) = 1
    ) as tabNChallenge 
        on a.hacker_id = tabNChallenge.hacker_id