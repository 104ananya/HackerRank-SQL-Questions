-- Weather Observation Station 1
-- Query a list of CITY and STATE from the STATION table.
select city, state from station;


-- Weather Observation Station 3
--  cities that have an even ID number
select distinct city from station
where mod(id, 2) = 0;


-- Weather Observation Station 4
--  distinct CITY entries in the table.
select count(city) - count(distinct city)
from station;


-- Weather Observation Station 5
-- shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

-- FOR SHORTEST NAME
select city, length(city) from station
order by length(city), city limit 1;

-- FOR LONGEST NAME 
select city, length(city) from station
order by length(city)desc, city limit 1;


--Weather Observation Station 6
-- starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
SELECT DISTINCT CITY
FROM STATION
WHERE
(CITY LIKE 'A%' OR
CITY LIKE 'E%' OR
CITY LIKE 'I%' OR
CITY LIKE 'O%' OR
CITY LIKE 'U%' );



