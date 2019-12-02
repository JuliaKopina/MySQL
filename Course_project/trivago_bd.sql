/*Создание таблиц*/

DROP DATABASE IF EXISTS trivago;
CREATE DATABASE trivago;
USE trivago;


/*Таблица Страны*/
DROP TABLE IF EXISTS countries;
CREATE TABLE countries (
  id SERIAL PRIMARY KEY,
  country VARCHAR(100) NOT NULL,
  
  INDEX (country)
);


/*Таблица Города*/
DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
  id SERIAL PRIMARY KEY,
  country_id BIGINT UNSIGNED DEFAULT NULL,
  city VARCHAR(100) NOT NULL,
  
  INDEX (city),
  FOREIGN KEY (country_id) REFERENCES countries(id) ON DELETE SET NULL
);


/*Таблица Тип отеля*/
DROP TABLE IF EXISTS hotel_type;
CREATE TABLE hotel_type (
  id SERIAL PRIMARY KEY,
  hotel_type VARCHAR(50) NOT NULL UNIQUE,
  
  INDEX (hotel_type)
);


/*Таблица Отели*/
DROP TABLE IF EXISTS hotels;
CREATE TABLE hotels (
  id SERIAL PRIMARY KEY,
  hotel_type_id BIGINT UNSIGNED NOT NULL,
  name VARCHAR(100) NOT NULL,
  description TEXT NOT NULL,
  
  INDEX (name),
  FOREIGN KEY (hotel_type_id) REFERENCES hotel_type(id)
);


/*Таблица Тип по количеству звезд*/
DROP TABLE IF EXISTS stars_types;
CREATE TABLE stars_types (
  id SERIAL PRIMARY KEY,
  stars VARCHAR(50) UNIQUE NOT NULL,
  
  INDEX (stars)
);


/*Таблица Количество звезд*/
DROP TABLE IF EXISTS stars;
CREATE TABLE stars (
	id SERIAL PRIMARY KEY,
    hotel_id BIGINT UNSIGNED NOT NULL,
    stars_type_id BIGINT UNSIGNED NOT NULL,
    
    FOREIGN KEY (hotel_id) REFERENCES hotels(id) ON DELETE CASCADE,
    FOREIGN KEY (stars_type_id) REFERENCES stars_types(id)
);


/*Таблица Контакты отелей*/
DROP TABLE IF EXISTS contacts;
CREATE TABLE contacts (
  hotel_id SERIAL PRIMARY KEY,
  country_id BIGINT UNSIGNED NOT NULL,
  city_id BIGINT UNSIGNED NOT NULL,
  street VARCHAR(250) NOT NULL,
  building VARCHAR(10) NOT NULL,
  latitude DECIMAL(10,8) NOT NULL,
  longitude DECIMAL(11,8) NOT NULL,
  phone VARCHAR(20),
  email VARCHAR(100),
  whatsapp VARCHAR(20),
  skype VARCHAR(100),
  
  FOREIGN KEY (city_id) REFERENCES cities(id),
  FOREIGN KEY (country_id) REFERENCES countries(id),
  FOREIGN KEY (hotel_id) REFERENCES hotels(id) ON DELETE CASCADE
);


/*Таблица Фото*/
DROP TABLE IF EXISTS photos;
CREATE TABLE photos (
  id SERIAL PRIMARY KEY,
  hotel_id BIGINT UNSIGNED NOT NULL,
  filename VARCHAR(255),
  
  FOREIGN KEY (hotel_id) REFERENCES hotels(id) ON DELETE CASCADE
);


/*Таблица Услуги отеля*/
DROP TABLE IF EXISTS hotel_services;
CREATE TABLE hotel_services (
  id SERIAL PRIMARY KEY,
  hotel_services VARCHAR(100) NOT NULL
);


/*Таблица связи сервисов отеля с отелями*/
DROP TABLE IF EXISTS hotel_details;
CREATE TABLE hotel_details (
  hotel_id BIGINT UNSIGNED NOT NULL,
  hotel_services_id BIGINT UNSIGNED NOT NULL,
  
  PRIMARY KEY (hotel_id, hotel_services_id),
  FOREIGN KEY (hotel_services_id) REFERENCES hotel_services(id) ON DELETE CASCADE,
  FOREIGN KEY (hotel_id) REFERENCES hotels(id) ON DELETE CASCADE
);


/*Таблица Удобства в номере*/
DROP TABLE IF EXISTS room_details_types;
CREATE TABLE room_details_types (
  id SERIAL PRIMARY KEY,
  room_details VARCHAR(100) NOT NULL
);


/*Таблица Категория номера*/
DROP TABLE IF EXISTS room_levels;
CREATE TABLE room_levels (
  id SERIAL PRIMARY KEY,
  room_levels VARCHAR(50) NOT NULL
);


/*Таблица Тип номера*/
DROP TABLE IF EXISTS room_types;
CREATE TABLE room_types (
  id SERIAL PRIMARY KEY,
  room_types VARCHAR(100) NOT NULL
);


/*Таблица Номера отеля*/
DROP TABLE IF EXISTS rooms;
CREATE TABLE rooms (
  id SERIAL PRIMARY KEY,
  hotel_id BIGINT UNSIGNED NOT NULL,
  room_type_id BIGINT UNSIGNED DEFAULT NULL,
  room_level_id BIGINT UNSIGNED DEFAULT NULL,
    
  FOREIGN KEY (hotel_id) REFERENCES hotels(id) ON DELETE CASCADE,
  FOREIGN KEY (room_type_id) REFERENCES room_types(id) ON DELETE SET NULL,
  FOREIGN KEY (room_level_id) REFERENCES room_levels(id) ON DELETE SET NULL  
);


DROP TABLE IF EXISTS room_details;
CREATE TABLE room_details (
  room_id BIGINT UNSIGNED NOT NULL,
  room_details_type_id BIGINT UNSIGNED NOT NULL,
  
  PRIMARY KEY (room_id, room_details_type_id),
  FOREIGN KEY (room_id) REFERENCES rooms(id) ON DELETE CASCADE,
  FOREIGN KEY (room_details_type_id) REFERENCES room_details_types (id) ON DELETE CASCADE
);


/*Таблица Пользователи сервиса*/
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  firstname VARCHAR(100) NOT NULL,
  lastname VARCHAR(100) NOT NULL,
  email VARCHAR(120) UNIQUE NOT NULL,
  password_hash VARCHAR(100) NOT NULL,
  phone VARCHAR(20) UNIQUE NOT NULL, 
    
  INDEX (firstname, lastname)
);


/*Таблица Дополнительные данные о пользователе*/
DROP TABLE IF EXISTS user_profiles;
CREATE TABLE user_profiles (
  id SERIAL PRIMARY KEY,
  user_id BIGINT UNSIGNED DEFAULT NULL,
  sex CHAR(1),
  birthday DATE,
  country_id BIGINT UNSIGNED DEFAULT NULL,
  city_id BIGINT UNSIGNED DEFAULT NULL,
  street varchar(100) DEFAULT NULL,
  building varchar(100) DEFAULT NULL,
  apartment BIGINT UNSIGNED DEFAULT NULL,
  created_at DATETIME DEFAULT NOW(),
  
  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
  FOREIGN KEY (city_id) REFERENCES cities(id) ON DELETE SET NULL,
  FOREIGN KEY (country_id) REFERENCES countries(id) ON DELETE SET NULL
);


/*Таблица Тип рейтинга отеля*/
DROP TABLE IF EXISTS rating_types;
CREATE TABLE rating_types (
  id SERIAL PRIMARY KEY,
  rating_types VARCHAR(50) UNIQUE NOT NULL
);


/*Таблица Отзывы посетителей отеля*/
DROP TABLE IF EXISTS reports;
CREATE TABLE reports (
  id SERIAL PRIMARY KEY,
  user_id BIGINT UNSIGNED NOT NULL,
  hotel_id BIGINT UNSIGNED NOT NULL,
  rating_types_id BIGINT UNSIGNED NOT NULL,
  report TEXT NOT NULL,
  created_at DATETIME DEFAULT NOW(),
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  
  FOREIGN KEY (hotel_id) REFERENCES hotels(id) ON DELETE CASCADE,
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (rating_types_id) REFERENCES rating_types(id)
);


/*Таблица бронирования номеров*/
DROP TABLE IF EXISTS bookings;
CREATE TABLE bookings (
  id SERIAL PRIMARY KEY,
  user_id BIGINT UNSIGNED NOT NULL,
  room_id BIGINT UNSIGNED NOT NULL,
  check_in_at DATETIME NOT NULL,
  check_out_at DATETIME NOT NULL,
  
  FOREIGN KEY (room_id) REFERENCES rooms(id),
  FOREIGN KEY (user_id) REFERENCES users(id)
);