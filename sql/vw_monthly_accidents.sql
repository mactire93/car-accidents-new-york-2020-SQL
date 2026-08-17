create or replace view vw_monthly_accidents as

with monthly_accidents as (
	select 
		month(crash_date) as month_number,
		monthname(crash_date) as month_name,
		count(*) as total_accidents
	from accidents_clean
	group by
		month(crash_date),
		monthname(crash_date)
)

select 
	month_number,
	month_name,
	total_accidents,
	round(
		total_accidents * 100/sum(total_accidents) over (),
		2
	) as accident_percentage
from monthly_accidents
order by month_number;

