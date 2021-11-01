select sum(c.population) from city c
join country t ON c.countrycode = t.code
where t.continent = 'Asia';