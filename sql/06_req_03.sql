-- REQ3:
-- On which specific street were the most accidents reported? What percentage of all reported accidents does this represent?

create or replace view vw_top_10_accident_street as

with on_street as (
	select
		on_street_name as street,
		count(*) as total_accidents
	from accidents_clean
	where on_street_name is not null
		and trim(on_street_name) <> ''
	group by
		on_street_name
)
		
select
	street,
	total_accidents,
	round(
		total_accidents * 100 / (select count(*) from accidents_clean),
		2
	) as accidents_percentage
	
from on_street
order by
	total_accidents DESC
limit 10;