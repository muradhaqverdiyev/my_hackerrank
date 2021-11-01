select s.name from students s
   join friends f ON s.id = f.id
   join packages p ON s.id = p.id
   join packages k ON f.friend_id = k.id
where k.salary > p.salary
order by k.salary;