create schema cars;
use cars;
-- read cars from data--
select * from car_dekho;
-- total cars --
select count(*) from car_dekho;
-- how many car avalable in 2023--
select count(*) from car_dekho
where year = 2023;
-- how many car avalable in 2020,21,22--
select count(*) from car_dekho
where year  in ( 2020,2021,2022) 
group by year;
-- give me total number of car by year--
select year,count(*) from car_dekho
group by year;
-- how many disel  car in 2020--
select count(*) from car_dekho
where year = 2020 and fuel= 'diesel';
-- how many petrol  car in 2020--
select count(*) from car_dekho
where year = 2020 and fuel= 'petrol';
-- how many petrol ,disel,cng by all year--
select year, count(*) from car_dekho
where fuel in ('petrol','diesel','cng')
group by year;
--  in which  year car had more than 100 --
select year ,count(*) from car_dekho
group by  year
having count(*) > 100;
 -- total car bet 2015 to 2023 --
select count(*) from car_dekho
where year between 2015 and 2023;
-- total car details beywwen 2015 to 2023--
select * from car_dekho
where year between 2015 and 2023;