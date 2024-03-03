/* Task 1 Using count, get the number of cities in the USA​ */
select * from city;
select * from country;
select * from countrylanguage;
select count(Name) as Cities_In_USA from city where countrycode='USA';

/* Task 2 Find out what the population and average life expectancy for people in Argentina (ARG) is. */
select population,lifeexpectancy from country where code='ARG'; 

/* Task 3 Using ORDER BY, LIMIT, what country has the highest life expectancy?​ */
select name as Countryname from country group by LifeExpectancy desc limit 1 ;

/* Task 4 Select 25 cities around the world that start with the letter 'F' in a single SQL query.​ */
select name as Cities from city where name like 'F%' limit 25;

/* Task 5 Create a SQL statement to display columns Id, Name, Population from the city table and limit results to first 10 rows only.​*/
select id, name,population from city limit 10;

/* Task 6 Create a SQL statement to find only those cities from city table whose population is larger than 2000000.​*/
select name as Cities from city where population>2000000;

/* Task 7 Create a SQL statement to find all city names from city table whose name begins with “Be” prefix.*/
select name as CityNames from city where name like 'be';

/* Task 8 Create a SQL statement to find only those cities from city table whose population is between 500000-1000000.​ */
 select name as Cities, population  from city where population between 500000  and 1000000;
 
 /* Task 9 Create a SQL statement to find a city with the lowest population in the city table.​*/
 select name as City_with_lowest_population from city order by population asc limit 1 ;
 
 /* Task 10 Create a SQL statement to find the capital of Spain (ESP)*/
 select * from country;
 select capital, name from country where code ='ESP';
 
 /* Task 11 Create a SQL statement to list all the languages spoken in the Caribbean region. */
 select * from countrylanguage;
 select * from country;
 select  distinct c.Language
 from countrylanguage c inner join country c1
 on c.countrycode= c1.code  where  c1.Region='Caribbean';
 
 /* Task 12 Create a SQL statement to find all cities from the Europe continent.​*/
 select * from city;
 select * from country;
 select * from countrylanguage;
 
 
 select name as Cities
 from city where CountryCode  in  (select code from country where continent='Europe');
   #  (OR)
 select c.name from country c1
 inner join city c 
 on c1.Code=c.CountryCode where c1.Continent='Europe'; 
 
 /* Task 13
 Identify the primary key in country table.​
    The column 'Code' is the primary key in the country table
    
Identify the primary key in city table.​
    The column 'Id' is the primary key in the city table 
    
Identify the primary key in countrylanguage table.​
    There are two primary keys in countrylanguage table. They are known as composite primary keys. 
    The columns 'Language' and 'countrycode' are the  primary key in the countrylanguage table
    
Identify the foreign key in city table.​
    The column 'Countrycode' is the foreign key in the city table

Identify the foreign key in countrylanguage table.​
    The column 'Countrycode' is the foreign key in the countrylanguage table
​/*
 
 
 


