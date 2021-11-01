select earning, count from
(select (months * salary) as earning, count(months * salary) as count, dense_rank() over(order by months * salary desc) as dr from employee
 group by months * salary)
 where dr=1;