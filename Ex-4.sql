-- Задание 4

-- Пункт 1
-- Увеличить Salary всех сотрудников в отделе 'HR' на 10%

UPDATE employees
SET salary = salary * 1.10
WHERE department = 'HR';

-- Пункт 2
-- Обновить Department любого сотрудника с Salary выше 70000.00 на 'Senior IT'

UPDATE employees
SET department = 'Senior IT'
WHERE employeeid = ( -- Это для того, чтобы повысить только одного сотрудника
    SELECT employeeid 
    FROM employees 
    WHERE salary > 70000.00 
    LIMIT 1	
);

-- Пункт 3
-- Удалить всех сотрудников, которые не назначены ни на один проект в
-- таблице EmployeeProjects. Подсказка: Используйте подзапрос NOT
-- EXISTS или LEFT JOIN

DELETE FROM employees
WHERE NOT EXISTS (
    SELECT 1
    FROM employeeprojects
    WHERE employeeprojects.employeeid = employees.employeeid
);

-- Пункт 4
-- Вставить новый проект и назначить на него двух существующих
-- сотрудников с определенным количеством HoursWorked в
-- EmployeeProjects, и все это в одном блоке BEGIN/COMMIT.

BEGIN;

-- 1. Вставляем новый проект
INSERT INTO Projects (ProjectName, StartDate, EndDate, Budget)
VALUES ('New project', '2025-08-18', '2025-09-25', 100000)
RETURNING projectid INTO NEW_PROJECT_ID;  -- Сохраняем ID нового проекта

-- 2. Назначаем двух конкретных сотрудников на проект
INSERT INTO EmployeeProjects (employeeID, projectid, hoursworked)
VALUES 
    ((SELECT employeeID FROM Employees WHERE lastname = 'Smith' LIMIT 1), 
     NEW_PROJECT_ID, 
     40),
    
    ((SELECT employeeID FROM Employees WHERE lastname = 'Davis' LIMIT 1), 
     NEW_PROJECT_ID, 
     35);

COMMIT;