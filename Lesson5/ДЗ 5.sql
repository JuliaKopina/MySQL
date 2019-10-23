/*Операторы, фильтрация, сортировка и ограничение*/

/*1. Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем*/
use vk;

ALTER TABLE users ADD created_at VARCHAR(100);
ALTER TABLE users ADD updated_at VARCHAR(100);
update users set created_at = "23.10.2019 8:10", updated_at = "23.10.2019 14:30";

/*2. Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались значения
в формате "20.10.2017 8:10". Необходимо преобразовать поля к типу DATETIME, сохранив введеные ранее значения*/

UPDATE users SET 
created_at = str_to_date(created_at, '%d.%m.%Y %H:%i'),
updated_at = str_to_date(updated_at, '%d.%m.%Y %H:%i');

ALTER TABLE users MODIFY created_at datetime;
ALTER TABLE users MODIFY updated_at datetime;

/*3. В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 0, если товар закончился и выше нуля, если на складе имеются запасы.
Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения значения value. Однако, нулевые запасы должны выводиться в конце, после всех записей*/

DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
  id SERIAL PRIMARY KEY,
  storehouse_id INT UNSIGNED,
  product_id INT UNSIGNED,
  value INT UNSIGNED COMMENT 'Запас товарной позиции на складе',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Запасы на складе';

insert into storehouses_products (storehouse_id, product_id, value) values 
(1, 1, 0),
(1, 2, 2500),
(1, 3, 0),
(1, 4, 30),
(1, 5, 500),
(1, 6, 1);

select * from storehouses_products order by 1/value desc

/*4. Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. Месяцы заданы в виде списка английских названий ('may', 'august')*/

DROP DATABASE IF EXISTS example;
CREATE DATABASE example;
USE example;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Покупатели';

INSERT INTO users (name, birthday_at) VALUES
  ('Gennady', '1990-10-05'),
  ('Natali', '1984-11-12'),
  ('Alexander', '1985-05-20'),
  ('Sergei', '1988-02-14'),
  ('Ivan', '1998-01-12'),
  ('Mary', '1992-08-29');
  
 SELECT name, monthname(birthday_at) as 'Birthday Month' FROM users 
	WHERE MONTHNAME(birthday_at) = 'may' OR MONTHNAME(birthday_at) = 'august';



/*Агрегация данных*/

/*1. Подсчитайте средний возраст пользователей в таблице users*/

DROP TABLE IF EXISTS users1;
CREATE TABLE users1 (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at varchar(50),
  updated_at varchar(50) 
) COMMENT = 'Покупатели';

INSERT INTO users1 (name, birthday_at, created_at, updated_at) VALUES
  ('Геннадий', '1990-10-05', "20.10.2017 8:10", "20.10.2017 8:10"),
  ('Наталья', '1984-11-12', "20.10.2017 8:10", "20.10.2017 8:10"),
  ('Александр', '1985-05-20', "20.10.2017 8:10", "20.10.2017 8:10"),
  ('Сергей', '1988-02-14', "20.10.2017 8:10", "20.10.2017 8:10"),
  ('Иван', '1998-01-12', "20.10.2017 8:10", "20.10.2017 8:10"),
  ('Мария', '1992-08-29', "20.10.2017 8:10", "20.10.2017 8:10");

select AVG((TIMESTAMPDIFF(year, birthday_at, now()))) as 'Средний возраст пользователей, лет' from users1

/*2. Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. Следует учесть, что необходимы дни недели текущего года, а не года рождения.*/

DROP TABLE IF EXISTS users1;
CREATE TABLE users1 (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at varchar(50),
  updated_at varchar(50) 
) COMMENT = 'Покупатели';

INSERT INTO users1 (name, birthday_at, created_at, updated_at) VALUES
  ('Геннадий', '1990-10-05', "20.10.2017 8:10", "20.10.2017 8:10"),
  ('Наталья', '1984-11-12', "20.10.2017 8:10", "20.10.2017 8:10"),
  ('Александр', '1985-05-20', "20.10.2017 8:10", "20.10.2017 8:10"),
  ('Сергей', '1988-02-14', "20.10.2017 8:10", "20.10.2017 8:10"),
  ('Иван', '1998-01-12', "20.10.2017 8:10", "20.10.2017 8:10"),
  ('Мария', '1992-08-29', "20.10.2017 8:10", "20.10.2017 8:10");

select dayname(date_format(birthday_at, '2019-%m-%d')) as 'Birthday on weekday in 2019', count(*) 
from users1 group by dayname(date_format(birthday_at, '2019-%m-%d'))

























