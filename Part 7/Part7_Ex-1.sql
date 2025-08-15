-- Часть 7 Задание 1
-- Найдите клиентов, которые:
-- 	1. Сделали хотя бы 2 заказа (любых),
-- 	2. Имеют хотя бы одну доставку со статусом 'Delivered'.
-- Для каждого такого клиента выведите:
-- 	● full_name (имя + фамилия),
-- 	● общее количество заказов,
-- 	● общую сумму заказов,
-- 	● страну проживания.
SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS full_name,
    c.country,
    COUNT(o.order_id) AS total_orders,
    SUM(o.amount) AS total_amount
FROM 
    customers c
    INNER JOIN orders o ON c.customer_id = o.customer_id
    INNER JOIN shippings s ON c.customer_id = s.customer
WHERE 
    s.status = 'Delivered'
GROUP BY 
    c.customer_id, c.first_name, c.last_name, c.country
HAVING 
    COUNT(o.customer_id) >= 2;