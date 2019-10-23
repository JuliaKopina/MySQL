/*Повторить все действия CRUD*/

use vk;
alter table users add is_deleted bit default 0 not null;

INSERT INTO users (id, firstname, lastname, email, password_hash, phone, is_deleted) values
('101', 'Dean', 'Satterfield', 'orin69@example.net', 'a8a902a1ea5a81484e1e36b9b2f2ab5fde28c5eb', '9160120629', default),
('102', 'Dean', 'Satterfield', 'orin53@example.net', 'a8a902a1ea5a81484e1e36b9b2f2ab5fde28c5eb', '9160120629', default),
('103', 'Dean', 'Satterfield', 'orin36@example.net', 'a8a902a1ea5a81484e1e36b9b2f2ab5fde28c5eb', '9160120629', default),
('104', 'Dean', 'Satterfield', 'orin28@example.net', 'a8a902a1ea5a81484e1e36b9b2f2ab5fde28c5eb', '9160120629', default),
('105', 'Dean', 'Satterfield', 'orin40@example.net', 'a8a902a1ea5a81484e1e36b9b2f2ab5fde28c5eb', '9160120629', default);

INSERT INTO users
SET
	firstname = 'Иван',
	lastname = 'Иванов',
	email = 'ivan@mail.ru',
	phone = '987654321'
;

INSERT INTO users
	(id, firstname, lastname, email, phone) 
select 
 	id, firstname, lastname, email, phone
from vk2.users
where id = 100;

SELECT distinct
firstname
FROM users;

SELECT *
FROM users
LIMIT 1 offset 5;

SELECT *
FROM users
WHERE id = 5 OR firstname = 'Reuben';

SELECT *
FROM users
WHERE id IN (1,2,30,4);

INSERT INTO friend_requests (`initiator_user_id`, `target_user_id`, `status`)
VALUES ('1', '2', 'requested');

INSERT INTO friend_requests (`initiator_user_id`, `target_user_id`, `status`)
VALUES ('1', '3', 'requested');

INSERT INTO friend_requests (`initiator_user_id`, `target_user_id`, `status`)
VALUES ('1', '4', 'requested');

INSERT INTO friend_requests (`initiator_user_id`, `target_user_id`, `status`)
VALUES ('1', '5', 'requested');

UPDATE friend_requests
SET 
	status = 'declined',
	confirmed_at = now()
WHERE
	initiator_user_id = 1 and target_user_id = 3
;

INSERT INTO users (id, firstname, lastname, email, password_hash, phone, is_deleted) values
('106', 'Reuben', 'Nienow', 'arlo50102@example.org', 'a8a902a1ea5a81484e18e36b9b2f2ab5fde28c5eb', '9374071116', default),
('107', 'Frederik', 'Upton', 'terrence.cartwright@example.org', 'a8a902a1ea5a81484e1e36b9b2f2ab5fde28c5eb', '9127498182', default),
('108', 'Unique', 'Windler', 'rupert55@example.org', 'a8a902a1eh5a81484e1e36d9b2f2ab5fde28c5eb', '9921090703', default),
('109', 'Norene', 'West', 'rebekah29@example.net', 'a8a902a1ea6a81484e1n36b9b2f2ab5fde28c5eb', '9592139196', default),
('110', 'Frederick', 'Effertz', 'von.bridget@example.net', 'a8a902a1ea5h81484e1e36f9b2f2ab7fde28c5eb', '9909791725', default);

alter table messages add is_deleted bit default 0 not null;

INSERT INTO messages values
('1','1','2','Voluptatem ut quaerat quia. Pariatur esse amet ratione qui quia. In necessitatibus reprehenderit et. Nam accusantium aut qui quae nesciunt non.','1995-08-28 22:44:29', 0),
('2','2','1','Sint dolores et debitis est ducimus. Aut et quia beatae minus. Ipsa rerum totam modi sunt sed. Voluptas atque eum et odio ea molestias ipsam architecto.',now(), 0),
('3','3','1','Sed mollitia quo sequi nisi est tenetur at rerum. Sed quibusdam illo ea facilis nemo sequi. Et tempora repudiandae saepe quo.','1993-09-14 19:45:58', 0),
('4','1','3','Quod dicta omnis placeat id et officiis et. Beatae enim aut aliquid neque occaecati odit. Facere eum distinctio assumenda omnis est delectus magnam.','1985-11-25 16:56:25', 0),
('5','1','5','Voluptas omnis enim quia porro debitis facilis eaque ut. Id inventore non corrupti doloremque consequuntur. Molestiae molestiae deleniti exercitationem sunt qui ea accusamus deserunt.','1999-09-19 04:35:46', 0)
;

delete from messages
where from_user_id = 1 ;

update messages
set is_deleted = 1;
where from from_user_id  = 1;