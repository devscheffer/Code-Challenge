select 
   a.hacker_id
   ,a.name
   --,d.hacker_id
   --,c.hacker_id
   --,d.submission_id
   --,d.challenge_id
   --,c.challenge_id 
   --,c.difficulty_level
   --,b.difficulty_level
   --,d.score
   --,b.score
   --,d.score - b.score
   --,count(a.hacker_id)
from Submissions d
left join Hackers a
on d.hacker_id = a.hacker_id
left join Challenges c 
on d.challenge_id = c.challenge_id
left join Difficulty b
on c.difficulty_level = b.difficulty_level
where d.score - b.score = 0
group by 
    a.hacker_id
   ,a.name
having count(a.hacker_id) > 1
order by 
    count(a.hacker_id) desc
    ,a.hacker_id asc
