-- 304 missing values found.
-- Replaced with 'Unspecified' to keep all records
-- in contributing factor analysis.
update accidents_clean
set contributing_factor_vehicle_1 = 'Unspecified'
where contributing_factor_vehicle_1 is null
or TRIM(contributing_factor_vehicle_1) = ''

-- checking updates // returns 0, updated successfully

select count(*)
from accidents_clean
where contributing_factor_vehicle_1 is null
or TRIM(contributing_factor_vehicle_1) = '';

