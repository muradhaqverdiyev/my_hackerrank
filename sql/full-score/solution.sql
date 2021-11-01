select h.hacker_id, h.name from submissions s
   join challenges c ON s.challenge_id=c.challenge_id
   join difficulty d ON c.difficulty_level=d.difficulty_level
   join hackers h ON s.hacker_id=h.hacker_id
where s.score = d.score
group by h.hacker_id, h.name 
having count(*) > 1
order by count(*) desc, h.hacker_id asc;