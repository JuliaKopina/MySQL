use shop;

/*��������� ������ ������������� users, ������� ����������� ���� �� ���� ����� orders � �������� ��������.*/

select name from users join orders on users.id = orders.`user_id`
group by name;


/*�������� ������ ������� products � �������� catalogs, ������� ������������� ������.*/

select name, (select name from catalogs where id = catalog_id) as `catalog` from products;


/*(�� �������) ����� ������� ������� ������ flights (id, from, to) � ������� ������� cities (label, name). 
���� from, to � label �������� ���������� �������� �������, ���� name � �������. �������� ������ ������
flights � �������� ���������� �������.*/

select 
(select name from cities where label = `from`) as `from`,
(select name from cities where label = `to`) as `to` 
from flights;