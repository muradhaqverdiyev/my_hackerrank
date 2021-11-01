select case 
       when g.grade > 7 then s.name 
       else null 
       end,   
g.grade, s.marks from students s
join grades g ON s.marks between g.min_mark and g.max_mark
order by g.grade desc, s.name asc, s.marks asc;