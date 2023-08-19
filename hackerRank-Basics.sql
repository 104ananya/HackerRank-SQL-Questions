-- Revising the Select Query I
select * from city where population > 100000 and CountryCode = 'USA';


-- Revising the Select Query II
select name from city where population > 120000 and CountryCode = 'USA';


-- Select All
select * from city;


-- Select By ID
select * from city
where id = 1661;


-- Japanese Cities' Attributes
select * from city
where countrycode = "JPN";


-- Japanese Cities' Names
select name from city
where countrycode = "JPN";



