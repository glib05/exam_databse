-- a) Найтепліший та найхолодніший місяці в м.Києві за останні 3 роки. 
select EXTRACT(MONTH FROM date_time) _month, avg(temperature) avg_temp from measure
join station using(station_id)
join region using(region_id)
group by EXTRACT(MONTH FROM date_time)
having avg(temperature) = (select max(avg_temp) from (select avg(temperature) avg_temp from measure
													 join station using(station_id)
													 join region using(region_id)
													 group by EXTRACT(MONTH FROM date_time)))
		or avg(temperature) = (select min(avg_temp) from (select avg(temperature) avg_temp from measure
													 join station using(station_id)
													 join region using(region_id)
													 group by EXTRACT(MONTH FROM date_time)));
													 
--b) Кількість прогнозів, доставлених кур‘єром на радіостанції, в назві котрих міститься «FM» за останній рік

SELECT COUNT(d.delivery_id), c.first_name AS delivered_forecasts
FROM delivery d
JOIN forecast f ON d.forecast_id = f.forecast_id
JOIN station s ON f.station_id = s.station_id
JOIN courier c using(courier_id)
WHERE  d.date >= current_date - INTERVAL '1 year'
group by c.first_name;


--c) Максимальна денна температура в липні місяці в м.Києві за 5 років від довільної дати.
SELECT MAX(temperature) AS max_daily_temperature
FROM measure
JOIN station using(station_id)
join region using(region_id)
WHERE EXTRACT(MONTH FROM date_time) = 7
  AND EXTRACT(YEAR FROM date_time) BETWEEN EXTRACT(YEAR FROM current_date) - 4 AND EXTRACT(YEAR FROM current_date)
  AND region.name = 'Київ';
  
--d) Максимальний перепад денної температури (різниця температури за 2 дні) за останні 3 місяці в Київській області.
SELECT MAX(temperature_diff) AS max_temperature_difference
FROM (SELECT ABS(m1.temperature - m2.temperature) AS temperature_diff
  FROM measure m1
  JOIN measure m2 ON m1.station_id = m2.station_id
  JOIN station s on m1.station_id = s.station_id
  JOIN region using(region_id)
  WHERE
    date(m1.date_time) = date(m2.date_time) - INTERVAL '2 days'
    AND m1.date_time >= current_date - INTERVAL '3 months'
	and region.name = 'Київ') AS temperature_diffs;
	
	
	
	
-- вибірка даних з усіх створених таблиць
select * from courier;
select * from delivery;
select * from forecast;
select * from measure;
select * from region;
select * from station;
select * from stuff;
select * from television;
