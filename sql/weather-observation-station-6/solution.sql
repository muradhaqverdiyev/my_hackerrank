select distinct city from station
where substr(city,1,1)='A' or substr(city,1,1)='E' or substr(city,1,1)='O' or substr(city,1,1)='U' or substr(city,1,1)='I';