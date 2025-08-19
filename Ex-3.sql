-- Задание 3

-- Пункт 1
-- Создать нового пользователя PostgreSQL (роль) с именем hr_user и простым паролем.

CREATE USER hr_user WITH PASSWORD '12345678';

-- Пункт 2. Предоставить hr_user право SELECT на таблицу Employees

CREATE ROLE noob;
GRANT SELECT ON employees TO noob;

GRANT noob TO hr_user;

-- Пункт 3. Тест: В новой сессии подключиться как hr_user и попытаться выполнить SELECT * FROM Employees;. (Должно сработать).

SELECT * FROM employees

-- Пункт 4. Как hr_user, попытаться выполнить INSERT нового сотрудника в Employees. (Должно завершиться неудачей).

INSERT INTO employees (employeeid, firstname, lastname, department, salary, email)
VALUES (4, 'Diana', 'Prince', 'IT', 80000.00, 'randomemail@gmail.com')

-- Пункт 5. Как пользователь-администратор, предоставить hr_user права INSERT и UPDATE на таблицу Employees.

CREATE ROLE pro;
GRANT SELECT, INSERT, UPDATE ON employees TO pro;
REVOKE noob FROM hr_user; 
GRANT pro TO hr_user;

-- Пункт 6. Тест: Как hr_user, попробовать выполнить INSERT и UPDATE сотрудника. (Теперь должно сработать)

INSERT INTO employees (employeeid, firstname, lastname, department, salary, email)
VALUES (4, 'Diana', 'Prince', 'IT', 80000.00, 'randomemail@gmail.com')
