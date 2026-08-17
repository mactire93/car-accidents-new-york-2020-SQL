-- REQ2
-- Determine accidents frequency by weekday and hour.

-- number of accidents per day and hour
create or replace view vw_accidents_by_day_hour as

select
	weekday(crash_date) as weekday_number,
	DAYNAME(crash_date) as day_name,
	hour(crash_time) as accident_hour,
	count(*) as total_accidents
from accidents_clean
group by
	weekday(crash_date),
	DAYNAME(crash_date),
	hour(crash_time);
	
	
-- number of accidents per day
create or replace view vw_accidents_by_day as
	
select
	weekday(crash_date) as weekday_number,
	DAYNAME(crash_date) as day_name,
	count(*) as total_accidents
from accidents_clean
group by
	weekday(crash_date),
	DAYNAME(crash_date);


-- number of accidents per hours
create or replace view vw_accidents_by_hour_of_day as

select
	hour(crash_time) as accident_hour,
	count(*) as total_accidents
from accidents_clean
group by
	hour(crash_time);
	
