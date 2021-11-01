select t.continent, floor(avg(c.population)) from city c
join country t ON c.countrycode = t.code
group by t.continent;