-- Задание 1 (Поиск по возрасту и стране)
select customer_id, first_name, last_name, age, country
from customers
where country = 'USA' and age > 25