-- Часть 2 Задание 1
-- Получите список заказов вместе с именем клиента, который сделал заказ.
SELECT
    first_name,
    last_name,
    item,
    amount
FROM
    orders o	
LEFT JOIN
    customers c on o.customer_id = c.customer_id;