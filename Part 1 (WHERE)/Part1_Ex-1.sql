-- Часть 1 Задание 1
-- Найдите всех клиентов из страны 'USA', которым больше 25 лет.
SELECT
    customer_id,
    first_name,
    last_name,
    age,
    country
FROM
    customers
WHERE
    country = 'USA' and age > 25