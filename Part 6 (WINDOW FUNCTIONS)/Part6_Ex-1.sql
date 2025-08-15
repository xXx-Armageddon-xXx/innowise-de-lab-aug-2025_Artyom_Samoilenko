-- Часть 6 Задание 1
-- Для каждого заказа добавьте колонку с суммой всех заказов этого клиента (используя оконную функцию)
SELECT 
    order_id,
    customer_id,
    item,
    amount,
    SUM(amount) OVER(PARTITION BY customer_id) AS total_by_customer
FROM 
    orders
ORDER BY 
    order_id, customer_id;