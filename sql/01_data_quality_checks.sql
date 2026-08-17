
-- checking whether the date range is correct (correect range 01-01-2020 to 29-08-2020) // data is correct
select
	min(crash_date),
	max(crash_date)
from
	car_accidents_in_ny;
	
	
-- checking whether the time is correct (correct range 00:00:00 to 23:59:00) // data is correct
select
	min(crash_time),
	max(crash_time)
from
	car_accidents_in_ny;
	
-- checking 'on_street_name' for null values // returns 19437 null values
select count(*)
from car_accidents_in_ny
where on_street_name is null
or TRIM(on_street_name) = '';

-- checking 'number_of_persons_killed' // returns 144
select 
	SUM(number_of_persons_killed)
from
	car_accidents_in_ny;

-- checking number positions of dataset // 74881 - correct
select count(*) from car_accidents_in_ny;

-- checking 'contributing_factor_vehicle_1' for null values // returns 304
select count(*)
from car_accidents_in_ny
where contributing_factor_vehicle_1 is null
or TRIM(contributing_factor_vehicle_1) = '';

-- checking everything for backup table:


-- checking whether the date range is correct (correect range 01-01-2020 to 29-08-2020) // data is correct
select
	min(crash_date),
	max(crash_date)
from
	accidents_clean;
	
	
-- checking whether the time is correct (correct range 00:00:00 to 23:59:00) // data is correct
select
	min(crash_time),
	max(crash_time)
from
	accidents_clean;
	
-- checking 'on_street_name' for null values // returns 19437 null values
select count(*)
from accidents_clean
where on_street_name is null
or TRIM(on_street_name) = '';

-- checking 'number_of_persons_killed' // returns 144
select 
	SUM(number_of_persons_killed)
from
	accidents_clean;

-- checking number positions of dataset // 74881 - correct
select count(*) from accidents_clean;

-- checking 'contributing_factor_vehicle_1' for null values // returns 304
select count(*)
from accidents_clean
where contributing_factor_vehicle_1 is null
or TRIM(contributing_factor_vehicle_1) = '';


	