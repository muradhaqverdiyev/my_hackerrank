select hacker_id, name, challenge from 
(
with cte as(
select h.hacker_id, h.name, count(c.challenge_id) as challenge from hackers h
join challenges c ON h.hacker_id = c.hacker_id
group by h.hacker_id, h.name
)
select c.*, 
       max(challenge) over() as max_challenge,
       count(challenge) over(partition by challenge) as number_of_challenge
from cte c
)
where number_of_challenge = 1 
      or (challenge = max_challenge and number_of_challenge > 1)
order by challenge desc, hacker_id;
