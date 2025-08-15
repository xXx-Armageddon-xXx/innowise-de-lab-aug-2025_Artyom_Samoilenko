-- Часть 4 Задание 1
-- Выведите список клиентов, отсортированный по возрасту по убыванию.
SELECT
    first_name,
    age
FROM 
    customers
ORDER BY 
    age desc