select result from (
    select concat(concat(name,'('),concat(substr(occupation,1,1),')')) as result from occupations
    order by name)
union all
select result from (
    select 'There are a total of '||count(*)||' '||concat(lower(occupation),'s.') as result from occupations
    group by occupation
    order by count(*), occupation);