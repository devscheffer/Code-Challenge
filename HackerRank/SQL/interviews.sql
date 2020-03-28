/*
Samantha interviews many candidates from different colleges using coding challenges and contests. 

Write a query to print the contest_id, hacker_id, name, and the sums of total_submissions, total_accepted_submissions, total_views, and total_unique_views for each contest sorted by contest_id. Exclude the contest from the result if all four sums are 0
Note: A specific contest can be used to screen candidates at more than one college, but each college only holds
screening 
*/
select 
    Contests.contest_id
    , Contests.hacker_id
    , Contests.name
    ,sum(tsub)
    ,sum(tasub)
    ,sum(tv)
    ,sum(tuv)
from Contests 
join  Colleges
on Contests.contest_id = Colleges.contest_id
join Challenges
on Colleges.college_id = Challenges.college_id
left join (
select 
    challenge_id
    ,sum(total_submissions) tsub
    ,sum(total_accepted_submissions) tasub
from Submission_Stats
group by challenge_id
) ss
on Challenges.challenge_id = ss.challenge_id
left join (
select 
    challenge_id
    ,sum(total_views) tv
    ,sum(total_unique_views) tuv
from View_Stats 
group by challenge_id
) vs
on Challenges.challenge_id = vs.challenge_id
group by 
    Contests.contest_id
    , Contests.hacker_id
    , Contests.name
having  
    sum(tsub)
    +sum(tasub)
    +sum(tv)
    +sum(tuv) > 0
order by Contests.contest_id