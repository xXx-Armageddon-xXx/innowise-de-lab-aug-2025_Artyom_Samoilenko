-- Часть 3 Задание 1
-- Подсчитайте количество клиентов в каждой стране.
SELECT
    country,
    count(*)
FROM
    customers
GROUP BY
    country