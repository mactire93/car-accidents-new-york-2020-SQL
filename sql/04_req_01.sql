-- REQ1: Porównaj procent ogólnej liczby wypadków według miesięcy. Czy zauważasz jakieś wzory sezonowe?
-- REQ1: Compare the percentage of the total number of accidents by month. Do you notice any seasonal patterns?


-- checking number of all collisions // number of collisions: 74881
select count(*) as accidents
from accidents_clean
where collision_id

-- checking number of accidents for every month
select
	month(crash_date) as month_number,
	monthname(crash_date) as month_name,
	count(*) as accidents
from accidents_clean
group by month_number
order by month_number;

-- calculate percentage share of accidents by months
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







