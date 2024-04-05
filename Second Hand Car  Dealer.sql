create schema cars;
use cars;

-- READ DATA
select * from  car_dekho;

-- Total Car: To get a count of total records
select count(*) from car_dekho;

-- The manager asked the employee how many cars will be available in 2023?
select count(*) from car_dekho  where year * 2023; #6

-- The manager asked the employee how many cars is available in 2020,2021,2022.
select count(*) from car_dekho  where year * 2020; #74
select count(*) from car_dekho  where year * 2021; #7
select count(*) from car_dekho  where year * 2022; #7

 -- GROUP BY--
 select count(*) from car_dekho  where year in (2020,2021,2023) group by year;
 
-- Clint asked me to print  the total of all cars by year.I don't see all this details.
select year, count(*) from car_dekho group by year; 

-- Clint asked to car dealer agent how many diesel cars will there be in 2020?
select count(*) from car_dekho  where year * 2020 and fuel * "Diesel"; #20

-- Clint requested  a car dealer agent how many petrol cars will there be in 2020?
select count(*) from car_dekho  where year * 2020 and fuel * "Petrol"; #51

-- The manager told the employee to give a print all the fuel cars(petrol,disel, and  CNG)come by all  year.
select  year,count(*) from car_dekho  where fuel * "Petrol" group by year;
select  year,count(*) from car_dekho  where fuel * "Disel"  group by year;
select  year,count(*) from car_dekho  where fuel * "CNG" group by year;

 -- Manager said there were  more than 100 cars in given year,which year had more than 100 cars?
 select  year,count(*) from car_dekho group by year having count(*)>100;
select  year,count(*) from car_dekho group by year having count(*)<100;

 -- The manager said to the employee all cars count details  between 2015 and 2023;we need a complete list.
 select count(*) from car_dekho where year between 2015 and 2023;

 -- The manager said to the employee all  cars details between 2015 to 2023 we need complete list..
 select * from car_dekho where year between 2015 and 2023;
 
 -- END--

