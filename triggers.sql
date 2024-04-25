--------------------------------------
-- тригер для перевірки, щоб один кур'єр не доставляв декілька прогнозів погоди на телебачення та радіо в один день.
CREATE OR REPLACE FUNCTION check_delivery()
RETURNS TRIGGER AS $$
BEGIN
  IF EXISTS (
    SELECT 1
    FROM delivery d
    WHERE d.courier_id = NEW.courier_id
      AND d.date = NEW.date
  ) THEN
    RAISE EXCEPTION 'Цей кур`єр вже доставляв прогноз погоди на телебачення в цей день';
	RETURN null;
  END IF;

  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER delivery_check
BEFORE INSERT ON delivery
FOR EACH ROW
EXECUTE FUNCTION check_delivery();

INSERT INTO delivery (date, courier_id, forecast_id, television_id) VALUES 
  ('2024-01-17', 1, 1, 1);
  
select * from delivery

--Тригер для видалення вимірювань, прогнозів та співробітників при видаленні станції
CREATE OR REPLACE FUNCTION delete_measurements()
RETURNS TRIGGER AS $$
BEGIN
  DELETE FROM measure
  WHERE measure.station_id = OLD.station_id;
  DELETE FROM forecast
  WHERE forecast.station_id = OLD.station_id;
  DELETE FROM stuff
  WHERE stuff.station_id = OLD.station_id;
  RAISE NOTICE 'all measurings, forecast and stuff for this station deleted';
  RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER delete_measurements_trigger
before DELETE ON station
FOR EACH ROW
EXECUTE FUNCTION delete_measurements();


INSERT INTO station (name, date_of_creation, region_id) VALUES
  ('Sample Station', '2024-01-25', 1);
  
select * from region

INSERT INTO stuff (first_name, last_name, gender, phone_number, email, work, station_id) VALUES
  ('John', 'Doe', 'Male', '+1234567890', 'john.doe@example.com', 'Meteorologist', 7);
  
INSERT INTO measure (date_time, temperature, humidity, atmo_pressure, wind_speed, wind_direction, station_id) VALUES
  ('2023-07-25 12:00:00', 30, 70.0, 1012.5, 10.0, 'схід', 1);
  
INSERT INTO forecast (date, description, station_id) VALUES
  ('2024-01-26', 'Сонячно', 7);
  
delete from station
where name = 'Sample Station';

--Тригер для автоматичного видалення застарілих вимірювань після додавання нового вимірювання
CREATE OR REPLACE FUNCTION delete_old_measurements()
RETURNS TRIGGER AS $$
BEGIN
  DELETE FROM measure
  WHERE date_time < (CURRENT_TIMESTAMP - INTERVAL '30 days');

  RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER delete_old_measurements_trigger
AFTER INSERT ON measure
FOR EACH ROW
EXECUTE FUNCTION delete_old_measurements();
