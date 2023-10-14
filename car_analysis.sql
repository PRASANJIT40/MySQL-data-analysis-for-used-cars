SELECT * FROM cars.car_analysis;
use cars;
-- READ DATA--
select*from car_analysis;

-- TOTAL COUNT OF RECORDS --
select count(*) from car_analysis;

-- NUMBERS OF CARS AVAILABLE IN 2023?  --
select count(*) from car_analysis  where year=2023;


-- NUMBERS OF CARS AVAILABLE IN 2020,2021,2022?  --
select count(*) from car_analysis where year in(2020,2021,2022) group by year;    
 # In order to get all the values of 3 different years simultaneously  we use group by function.
 
 
 -- TOTAL OF ALL CARS BY YEARS --
 select year, count(*) from car_analysis group by year;
 
 
 -- NUMBER OF DIESEL CARS AVAILABLE IN 2020 --
 select fuel,year, count(*) from car_analysis where year=2020 and fuel="Diesel";


 -- NUMBER OF PETROL CARS AVAILABLE IN 2020 --
 select year,fuel, count(*) from car_analysis where year=2020  and fuel="Petrol";


 -- NUMBER OF FUEL(PETROL,DIESEL,CNG) CARS COME IN ALL YEARS --
 select year,fuel, count(*) from car_analysis where fuel="Petrol" group by year;
 select year,fuel, count(*) from car_analysis where fuel="Diesel" group by year;
 select year,fuel, count(*) from car_analysis where fuel="CNG" group by year;
 
 
 
 -- THERE ARE MORE THAN 100 CARS IN A YEAR,WHICH YEAR HAD MORE THAN 100 CARS --
 select year, count(*) from car_analysis group by year having count(*)>100;
  select year, count(*) from car_analysis group by year having count(*)<50;
  
  
  -- TOTAL NUMBERS OF CARS BETWEEN 2015 AND 2023 --
  select year, count(*) from car_analysis where year in(2015,2016,2017,2018,2019,2020,2021,2022,2023) group by year;
  select count(*) from car_analysis where year between 2015 and 2023 ;    #Main query for total cars between 2015 and 2023.
  
  
  
  --  ALL CARS DETAILS BETWEEN 2015 and 2023 --
   select * from car_analysis where year between 2015 and 2023;

