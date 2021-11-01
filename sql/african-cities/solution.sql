select c.name from city c
join country t ON c.countrycode = t.code
where t.continent = 'Africa';