INSERT INTO region (name, climate, area, population) VALUES 
  ('Київ', 'Континентальний', 839.06, 2884000),
  ('Львів', 'Континентальний', 182.01, 721301),
  ('Одеса', 'Морський', 163.56, 1008915),
  ('Харків', 'Континентальний', 350.91, 1441362);
  
INSERT INTO station (name, date_of_creation, region_id) VALUES 
  ('Станція 1', '2023-01-01', 1),
  ('Станція 2', '2023-02-15', 2),
  ('Станція 3', '2023-03-20', 3),
  ('Станція 4', '2023-04-10', 4),
  ('Станція 5', '2023-05-25', 1),
  ('Станція 6', '2023-06-30', 2);
  
INSERT INTO stuff (first_name, last_name, gender, phone_number, email, work, station_id) VALUES 
  ('Іван', 'Петров', 'Чоловіча', '+380951234567', 'ivan@example.com', 'Метеоролог', 1),
  ('Олена', 'Іванова', 'Жіноча', '+380972345678', 'olena@example.com', 'Аналітик', 2),
  ('Андрій', 'Сидоренко', 'Чоловіча', '+380503456789', 'andriy@example.com', 'Технік', 3),
  ('Марія', 'Коваль', 'Жіноча', '+380964567890', 'maria@example.com', 'Метеоролог', 4),
  ('Петро', 'Морозов', 'Чоловіча', '+380935678901', 'petro@example.com', 'Технік', 5),
  ('Катерина', 'Шевченко', 'Жіноча', '+380986789012', 'katerina@example.com', 'Аналітик', 6),
  ('Ігор', 'Григоренко', 'Чоловіча', '+380957890123', 'igor@example.com', 'Метеоролог', 1),
  ('Наталя', 'Кузьменко', 'Жіноча', '+380978901234', 'natalya@example.com', 'Технік', 2),
  ('Сергій', 'Козак', 'Чоловіча', '+380509012345', 'sergiy@example.com', 'Аналітик', 3),
  ('Юлія', 'Павленко', 'Жіноча', '+380960123456', 'yulia@example.com', 'Метеоролог', 4),
  ('Віталій', 'Литвин', 'Чоловіча', '+380931234567', 'vitaliy@example.com', 'Аналітик', 5),
  ('Ольга', 'Мельник', 'Жіноча', '+380972345678', 'olga@example.com', 'Технік', 6);
  
INSERT INTO measure (date_time, temperature, humidity, atmo_pressure, wind_speed, wind_direction, station_id) VALUES 
  ('2024-01-21 08:00:00', 15.5, 65.3, 1015.2, 8.2, 'схід', 1),
  ('2024-01-22 12:00:00', 20.3, 58.7, 1013.5, 10.5, 'захід', 2),
  ('2024-01-23 16:00:00', 18.0, 70.1, 1012.8, 7.8, 'північний схід', 3),
  ('2024-01-24 20:00:00', 12.8, 80.5, 1014.6, 5.2, 'південний захід', 4),
  ('2024-01-05 08:00:00', 9.2, 92.4, 1011.3, 3.7, 'південь', 5),
  ('2024-01-06 12:00:00', 24.1, 45.8, 1010.9, 12.3, 'північний захід', 6),
  ('2024-01-07 16:00:00', 17.6, 68.3, 1013.7, 9.0, 'схід', 1),
  ('2024-01-08 20:00:00', 13.4, 75.9, 1012.1, 6.5, 'захід', 2),
  ('2024-01-09 08:00:00', 11.7, 84.2, 1014.8, 4.8, 'північ', 3),
  ('2024-01-10 12:00:00', 26.5, 38.6, 1010.5, 14.2, 'південний захід', 4),
  ('2024-01-11 16:00:00', 7.9, 96.7, 1009.2, 2.3, 'південь', 5),
  ('2024-01-12 20:00:00', 19.8, 55.4, 1011.9, 8.8, 'північний захід', 6),
  ('2024-01-13 08:00:00', 14.3, 73.8, 1013.4, 6.1, 'схід', 1),
  ('2024-01-14 12:00:00', 22.7, 49.2, 1010.7, 11.0, 'захід', 2),
  ('2024-01-15 16:00:00', 16.5, 67.0, 1012.3, 8.3, 'північ', 3),
  ('2024-01-16 20:00:00', 10.9, 88.5, 1011.5, 4.2, 'південний захід', 4),
  ('2024-01-17 08:00:00', 8.4, 91.2, 1013.1, 3.0, 'південь', 5),
  ('2024-01-18 12:00:00', 25.2, 42.7, 1009.8, 13.5, 'північний захід', 6),
  ('2024-01-19 16:00:00', 18.9, 62.1, 1014.0, 7.5, 'схід', 1),
  ('2024-01-20 20:00:00', 12.1, 79.6, 1012.6, 5.7, 'захід', 2);
  
INSERT INTO measure (date_time, temperature, humidity, atmo_pressure, wind_speed, wind_direction, station_id) VALUES 
  ('2024-01-21 08:00:00', 15.5, 65.3, 1015.2, 8.2, 'схід', 1),
  ('2024-01-22 12:00:00', 20.3, 58.7, 1013.5, 10.5, 'захід', 1),
  ('2024-01-23 16:00:00', 18.0, 70.1, 1012.8, 7.8, 'північний схід', 1),
  ('2024-01-24 20:00:00', 12.8, 80.5, 1014.6, 5.2, 'південний захід', 1),
  ('2024-01-05 08:00:00', 9.2, 92.4, 1011.3, 3.7, 'південь', 1),
  ('2024-01-06 12:00:00', 24.1, 45.8, 1010.9, 12.3, 'північний захід', 1),
  ('2024-01-07 16:00:00', 17.6, 68.3, 1013.7, 9.0, 'схід', 1),
  ('2024-01-08 20:00:00', 13.4, 75.9, 1012.1, 6.5, 'захід', 1),
  ('2024-01-09 08:00:00', 11.7, 84.2, 1014.8, 4.8, 'північ', 1),
  ('2024-01-10 12:00:00', 26.5, 38.6, 1010.5, 14.2, 'південний захід', 1),
  ('2024-01-11 16:00:00', 7.9, 96.7, 1009.2, 2.3, 'південь', 1),
  ('2024-01-12 20:00:00', 19.8, 55.4, 1011.9, 8.8, 'північний захід', 1),
  ('2024-01-13 08:00:00', 14.3, 73.8, 1013.4, 6.1, 'схід', 1),
  ('2024-01-14 12:00:00', 22.7, 49.2, 1010.7, 11.0, 'захід', 1),
  ('2024-01-15 16:00:00', 16.5, 67.0, 1012.3, 8.3, 'північ', 1),
  ('2024-01-16 20:00:00', 10.9, 88.5, 1011.5, 4.2, 'південний захід', 1),
  ('2024-01-17 08:00:00', 8.4, 91.2, 1013.1, 3.0, 'південь', 1),
  ('2024-01-18 12:00:00', 25.2, 42.7, 1009.8, 13.5, 'північний захід', 1),
  ('2024-01-19 16:00:00', 18.9, 62.1, 1014.0, 7.5, 'схід', 1),
  ('2024-01-20 20:00:00', 12.1, 79.6, 1012.6, 5.7, 'захід', 1);
  
INSERT INTO forecast (date, description, station_id) VALUES 
  ('2023-01-01', 'Сонячно', 1),
  ('2023-01-02', 'Хмарно з дощем', 2),
  ('2023-01-03', 'Переважно ясно', 3),
  ('2023-01-04', 'Туман', 4),
  ('2023-01-05', 'Сильний вітер', 5),
  ('2023-01-06', 'Мряка', 6),
  ('2023-01-07', 'Легкий дощ', 1),
  ('2023-01-08', 'Прохолодно', 2),
  ('2023-01-09', 'Спекотно', 3),
  ('2023-01-10', 'Сніг', 4),
  ('2023-01-11', 'Заморозки', 5),
  ('2023-01-12', 'Переважно хмарно', 6),
  ('2023-01-13', 'Сонячно', 1),
  ('2023-01-14', 'Дощ', 2),
  ('2023-01-15', 'Метеорологічна нестабільність', 3),
  ('2023-01-16', 'Спекотно', 4),
  ('2023-01-17', 'Туман', 5),
  ('2023-01-18', 'Прохолодно', 6),
  ('2023-01-19', 'Сильний вітер', 1),
  ('2023-01-20', 'Снігопад', 2);
  
INSERT INTO courier (first_name, last_name, gender, phone_number, email) VALUES 
  ('Олексій', 'Іванов', 'Чоловіча', '+380951234567', 'oleksiy@example.com'),
  ('Анна', 'Петренко', 'Жіноча', '+380972345678', 'anna@example.com'),
  ('Ігор', 'Сидорчук', 'Чоловіча', '+380503456789', 'igor@example.com'),
  ('Наталія', 'Коваленко', 'Жіноча', '+380964567890', 'natalia@example.com'),
  ('Володимир', 'Мельник', 'Чоловіча', '+380931234567', 'volodymyr@example.com'),
  ('Олена', 'Шевченко', 'Жіноча', '+380973456789', 'olena@example.com'),
  ('Максим', 'Козак', 'Чоловіча', '+380504567890', 'maxim@example.com'),
  ('Ірина', 'Павленко', 'Жіноча', '+380965678901', 'irina@example.com'),
  ('Віталій', 'Григоренко', 'Чоловіча', '+380936789012', 'vitaliy@example.com'),
  ('Ольга', 'Литвин', 'Жіноча', '+380978901234', 'olga@example.com');
  
INSERT INTO television (rating, description) VALUES 
  (75.2, 'Новини 24/7'),
  (89.5, 'Музичний канал FM'),
  (65.8, 'Спортивний канал'),
  (92.1, 'Розважальний канал FM'),
  (50.3, 'Науковий канал');
  
INSERT INTO delivery (date, courier_id, forecast_id, television_id) VALUES 
  ('2024-01-17', 1, 1, 1),
  ('2024-01-17', 2, 2, 2),
  ('2024-01-17', 3, 3, 3),
  ('2024-01-18', 4, 4, 4),
  ('2024-01-18', 5, 5, 5),
  ('2024-01-18', 6, 6, 1),
  ('2024-01-19', 7, 7, 2),
  ('2024-01-19', 8, 8, 3),
  ('2024-01-19', 9, 9, 4),
  ('2024-01-20', 1, 10, 5),
  ('2024-01-20', 2, 11, 1),
  ('2024-01-20', 3, 12, 2),
  ('2024-01-21', 4, 13, 3),
  ('2024-01-21', 5, 14, 4),
  ('2024-01-21', 6, 15, 5),
  ('2024-01-22', 7, 16, 1),
  ('2024-01-22', 8, 17, 2),
  ('2024-01-22', 9, 18, 3),
  ('2024-01-23', 1, 19, 4),
  ('2024-01-23', 2, 20, 5),
  ('2024-01-23', 3, 1, 1),
  ('2024-01-24', 4, 2, 2),
  ('2024-01-24', 5, 3, 3),
  ('2024-01-24', 6, 4, 4);