-- Часть 2 Задание 2
-- Выведите список доставок со статусом и именем клиента.
SELECT
    status,
    first_name,
    last_name
FROM 
    shippings s
LEFT JOIN customers c on s.customer = c.customer_id;