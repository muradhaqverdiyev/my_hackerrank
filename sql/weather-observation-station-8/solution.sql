select distinct city from station
where (substr(city,-1,1) in('a','e','o','u','i')) and (substr(city,1,1) in('A','E','O','U','I')) ;