select c.company_code, c.founder, count(distinct l.lead_manager_code), count(distinct s.senior_manager_code),
count(distinct m.manager_code), count(distinct e.employee_code) from employee e

join company c ON e.company_code=c.company_code
join manager m ON e.manager_code=m.manager_code
join senior_manager s ON e.senior_manager_code=s.senior_manager_code 
join lead_manager l ON e.lead_manager_code=l.lead_manager_code 

group by c.company_code,c.founder
order by c.company_code;