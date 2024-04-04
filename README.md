# SQL-Projects
-- 1.What is the total number of cars?
SELECT COUNT(name) from Cardekho;

-- 2.How many cars available in 2023?
SELECT count(name) from Cardekho
WHERE year =  2023;

-- 3.How many cars is available in 2020,2021,2022?
sELECT year,count(name) as total from Cardekho
WHERE year in (2020,2021,2022)
group by year;

-- 4.Print the total of all cars by years ?
SELECT year,COUNT(name) as total from Cardekho
group by year;

-- 5.How many disel cars will be there in 2020?
SELECT year, count(fuel) as total from Cardekho
where fuel ="Diesel" and year =2020;

-- 6.How many petrol cars will be there in 2020?
SELECT year, count(fuel) as total from Cardekho
where fuel ="Petrol" and year =2020;

-- 7.Print all the fuel cars by years?
SELECT year,fuel from Cardekho
group by year;

-- 8.which year has more than 100 cars?
SELECT year,count(name) as cars from Cardekho
group by year
having  count(name) >100;

-- 9.Total number of cars between the year 2015 and 2023?
select year,count(name) as total_no_of_cars
from Cardekho
where year BETWEEN 2015 and 2023
group by year;

--10 ALL cars detail between 2015 and 2023?
select  * from Cardekho
where year BETWEEN 2015 and 2023
group by year;
-- END --
