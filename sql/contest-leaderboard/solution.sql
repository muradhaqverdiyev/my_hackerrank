with max_info as(
     select hacker_id, max(score) as maxscore from submissions
     group by hacker_id, challenge_id
)
select h.hacker_id, h.name, sum(maxscore) as total_score from hackers h
  join max_info ON h.hacker_id = max_info.hacker_id
  group by h.hacker_id, h.name
  having sum(maxscore) > 0 
  order by sum(maxscore) desc, h.hacker_id asc;