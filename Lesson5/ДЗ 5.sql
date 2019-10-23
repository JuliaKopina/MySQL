/*���������, ����������, ���������� � �����������*/

/*1. ����� � ������� users ���� created_at � updated_at ��������� ��������������. ��������� �� �������� ����� � ��������*/
use vk;

ALTER TABLE users ADD created_at VARCHAR(100);
ALTER TABLE users ADD updated_at VARCHAR(100);
update users set created_at = "23.10.2019 8:10", updated_at = "23.10.2019 14:30";

/*2. ������� users ���� �������� ��������������. ������ created_at � updated_at ���� ������ ����� VARCHAR � � ��� ������ ����� ���������� ��������
� ������� "20.10.2017 8:10". ���������� ������������� ���� � ���� DATETIME, �������� �������� ����� ��������*/

UPDATE users SET 
created_at = str_to_date(created_at, '%d.%m.%Y %H:%i'),
updated_at = str_to_date(updated_at, '%d.%m.%Y %H:%i');

ALTER TABLE users MODIFY created_at datetime;
ALTER TABLE users MODIFY updated_at datetime;

/*3. � ������� ��������� ������� storehouses_products � ���� value ����� ����������� ����� ������ �����: 0, ���� ����� ���������� � ���� ����, ���� �� ������ ������� ������.
���������� ������������� ������ ����� �������, ����� ��� ���������� � ������� ���������� �������� value. ������, ������� ������ ������ ���������� � �����, ����� ���� �������*/

DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
  id SERIAL PRIMARY KEY,
  storehouse_id INT UNSIGNED,
  product_id INT UNSIGNED,
  value INT UNSIGNED COMMENT '����� �������� ������� �� ������',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = '������ �� ������';

insert into storehouses_products (storehouse_id, product_id, value) values 
(1, 1, 0),
(1, 2, 2500),
(1, 3, 0),
(1, 4, 30),
(1, 5, 500),
(1, 6, 1);

select * from storehouses_products order by 1/value desc

/*4. �� ������� users ���������� ������� �������������, ���������� � ������� � ���. ������ ������ � ���� ������ ���������� �������� ('may', 'august')*/

DROP DATABASE IF EXISTS example;
CREATE DATABASE example;
USE example;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT '��� ����������',
  birthday_at DATE COMMENT '���� ��������',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = '����������';

INSERT INTO users (name, birthday_at) VALUES
  ('Gennady', '1990-10-05'),
  ('Natali', '1984-11-12'),
  ('Alexander', '1985-05-20'),
  ('Sergei', '1988-02-14'),
  ('Ivan', '1998-01-12'),
  ('Mary', '1992-08-29');
  
 SELECT name, monthname(birthday_at) as 'Birthday Month' FROM users 
	WHERE MONTHNAME(birthday_at) = 'may' OR MONTHNAME(birthday_at) = 'august';



/*��������� ������*/

/*1. ����������� ������� ������� ������������� � ������� users*/

DROP TABLE IF EXISTS users1;
CREATE TABLE users1 (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT '��� ����������',
  birthday_at DATE COMMENT '���� ��������',
  created_at varchar(50),
  updated_at varchar(50) 
) COMMENT = '����������';

INSERT INTO users1 (name, birthday_at, created_at, updated_at) VALUES
  ('��������', '1990-10-05', "20.10.2017 8:10", "20.10.2017 8:10"),
  ('�������', '1984-11-12', "20.10.2017 8:10", "20.10.2017 8:10"),
  ('���������', '1985-05-20', "20.10.2017 8:10", "20.10.2017 8:10"),
  ('������', '1988-02-14', "20.10.2017 8:10", "20.10.2017 8:10"),
  ('����', '1998-01-12', "20.10.2017 8:10", "20.10.2017 8:10"),
  ('�����', '1992-08-29', "20.10.2017 8:10", "20.10.2017 8:10");

select AVG((TIMESTAMPDIFF(year, birthday_at, now()))) as '������� ������� �������������, ���' from users1

/*2. ����������� ���������� ���� ��������, ������� ���������� �� ������ �� ���� ������. ������� ������, ��� ���������� ��� ������ �������� ����, � �� ���� ��������.*/

DROP TABLE IF EXISTS users1;
CREATE TABLE users1 (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT '��� ����������',
  birthday_at DATE COMMENT '���� ��������',
  created_at varchar(50),
  updated_at varchar(50) 
) COMMENT = '����������';

INSERT INTO users1 (name, birthday_at, created_at, updated_at) VALUES
  ('��������', '1990-10-05', "20.10.2017 8:10", "20.10.2017 8:10"),
  ('�������', '1984-11-12', "20.10.2017 8:10", "20.10.2017 8:10"),
  ('���������', '1985-05-20', "20.10.2017 8:10", "20.10.2017 8:10"),
  ('������', '1988-02-14', "20.10.2017 8:10", "20.10.2017 8:10"),
  ('����', '1998-01-12', "20.10.2017 8:10", "20.10.2017 8:10"),
  ('�����', '1992-08-29', "20.10.2017 8:10", "20.10.2017 8:10");

select dayname(date_format(birthday_at, '2019-%m-%d')) as 'Birthday on weekday in 2019', count(*) 
from users1 group by dayname(date_format(birthday_at, '2019-%m-%d'))

























