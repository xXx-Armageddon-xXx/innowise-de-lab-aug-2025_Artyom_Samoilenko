-- Часть 3 Задание 2
-- Посчитайте общее количество заказов и среднюю сумму по каждому товару.
SELECT
    item,
    count(item),
    avg(amount)
FROM
    orders
GROUP BY
    item