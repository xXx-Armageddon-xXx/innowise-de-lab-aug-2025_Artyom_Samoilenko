-- Задание 1

-- Пункт 1. Добавление двух сотрудников в таблицу

INSERT INTO employees (FirstName, LastName, Department, Salary)
VALUES ('Gumball', 'Waterson', 'HR', 40000),
       ('Darwin', 'Waterson', 'IT', 41000);

-- Пункт 2. Выбрать всех сотрудников
SELECT * FROM employees;

-- Пункт 3. Выбрать только FirstName и LastName сотрудников из отдела 'IT'
SELECT firstname, lastname
FROM employees
WHERE department = 'IT';

-- Пункт 4. Обновить Salary 'Alice Smith' до 65000.00

UPDATE employees
SET salary = 65000.00
WHERE firstname = 'Alice' AND lastname = 'Smith';

-- Пункт 5. Удалить сотрудника, чья LastName — 'Prince'

-- Сначала получаем ID сотрудника
WITH prince_id AS (
    SELECT employeeid FROM employees WHERE lastname = 'Prince' LIMIT 1)
DELETE FROM employeeprojects
WHERE employeeid = (SELECT employeeid FROM prince_id);

-- Затем удаляем самого сотрудника
DELETE FROM employees
WHERE lastname = 'Prince';

-- Пункт 6. Проверить все изменения, используя SELECT * FROM Employees
SELECT * FROM Employees;