create type enum_direction as enum (
    'схід', 'південь', 'південний захід', 'захід', 'північний захід', 'північ', 'північний схід', 'східний захід'
);

create table region(
  region_id int  generated always as identity primary key,
  name varchar(40) not null,
  climate text,
  area float,
  population int
);

create table station(
  station_id int  generated always as identity primary key,
  name varchar(50) not null,
  date_of_creation date,
  region_id int not null,
  foreign key (region_id) references region(region_id)
);

create table stuff(
  stuff_id int generated always as identity primary key,
  first_name varchar(30) not null,
  last_name varchar(30) not null,
  gender varchar(15),
  phone_number char(13),
  email varchar(50),
  work text,
  station_id int not null,
	foreign key (station_id) references station(station_id)
);

create table measure(
  measure_id int generated always as identity primary key,
  date_time timestamp not null,
  temperature float,
  humidity float check (humidity >= 0 and humidity <= 100),
  atmo_pressure float,
  wind_speed float,
  wind_direction enum_direction,
  station_id int not null,
	foreign key (station_id) references station(station_id)
);

create table forecast(
  forecast_id int generated always as identity primary key,
  date date not null,
  description text not null,
  station_id int not null,
	foreign key (station_id) references station(station_id)
);

create table courier(
  courier_id int generated always as identity primary key,
  first_name varchar(30) not null,
  last_name varchar(30) not null,
  gender varchar(15),
  phone_number char(13) not null,
  email varchar(50)
);

create table television(
  television_id int generated always as identity primary key,
  rating float check (rating >= 0 and rating <= 100),
  description text
);

create table delivery(
  delivery_id int generated always as identity primary key,
  date date,
  courier_id int not null,
  forecast_id int not null,
  television_id int not null,
	foreign key (courier_id) references courier(courier_id),
	foreign key (forecast_id) references forecast(forecast_id),
	foreign key (television_id) references television(television_id)
);
