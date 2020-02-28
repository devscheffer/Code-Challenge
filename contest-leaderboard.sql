/*
-The total score of a hacker is the sum of their maximum scores for all of the challenges. 
-Write a query to print the hacker_id, name, and total score of the hackers ordered by the descending score. If more than one hacker achieved the same total score, then sort the result by ascending hacker_id. 
-Exclude all hackers with a total score of 0 from your result.
*/

select 
    hackers.hacker_id
    ,hackers.name
    ,sum(max_score)
    from hackers
    left join (
        select 
            hacker_id
            ,challenge_id
            ,max(score) as max_score
            from submissions
            group BY
                hacker_id
                ,challenge_id
    ) as tabScore
    on hackers.hacker_id = tabScore.hacker_id
    group by 
        hackers.hacker_id
        ,hackers.name
    having sum(max_score) > 0
    order by 
        sum(max_score) desc 
        ,hackers.hacker_id asc