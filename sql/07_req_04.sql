-- REQ 4:
-- What was the most common contributing factor to accidents in this sample (based on vehicle 1)? 
-- And what about fatal accidents?

-- Common contributing factor to accidents

create or replace view vw_contributing_factors as

select
	contributing_factor_vehicle_1 as contributing_factor,
	count(*) as total_accidents
from accidents_clean
where contributing_factor_vehicle_1 is not null 
	and trim(contributing_factor_vehicle_1) <> ''
	and trim(contributing_factor_vehicle_1) <> 'Unspecified'
group by contributing_factor_vehicle_1
order by total_accidents desc;

-- Common contributing factor to fatal accidents

create or replace view vw_fatal_contributing_fatal_factors as

select
	contributing_factor_vehicle_1 as contributing_factor,
	count(*) as total_accidents
from accidents_clean
where contributing_factor_vehicle_1 is not null 
	and trim(contributing_factor_vehicle_1) <> ''
	and trim(contributing_factor_vehicle_1) <> 'Unspecified'
	and number_of_persons_killed > 0
group by contributing_factor
order by total_accidents desc;


