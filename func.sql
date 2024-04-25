CREATE OR REPLACE FUNCTION generate_weather_report(start_date date)
RETURNS table(
	region_name varchar(40),
	avg_temperature float,
	avg_humidity float,
	avg_atmo_pressure float,
	avg_wind_speed float
) AS $$
DECLARE
  city_cursor CURSOR FOR
    SELECT name FROM region;
  
BEGIN
	return query select r.name, avg(temperature) avg_temperature,
	avg(humidity) avg_humidity, avg(atmo_pressure) avg_atmo_pressure, avg(wind_speed) avg_wind_speed
	from measure
	join station using(station_id)
	join region r using(region_id)
	where date(date_time) > start_date
	group by r.name;
	
END;
$$ LANGUAGE plpgsql;

select * from generate_weather_report('2024-01-17');