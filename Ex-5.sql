-- Задание 5

-- Пункт 1
-- Функция: Создать функцию PostgreSQL с именем CalculateAnnualBonus, которая принимает employee_id и
-- Salary в качестве входных данных и возвращает рассчитанную сумму бонуса (10 % от Salary) для этого сотрудника. 
-- Используйте PL/pgSQL для тела функции

CREATE OR REPLACE FUNCTION CalculateAnnualBonus(
    employee_id INTEGER,
    salary DECIMAL(10, 2)
)
RETURNS NUMERIC
LANGUAGE plpgsql
AS $$
BEGIN
    -- Вычисляем бонус как 10% от зарплаты
    RETURN salary * 0.10;
END;
$$;

-- Пункт 2
-- Использовать эту функцию в операторе SELECT, чтобы увидеть потенциальный бонус для каждого сотрудника
SELECT 
    e.employeeid,
    e.firstname,
    e.lastname,
    e.salary,
    CalculateAnnualBonus(e.employeeid, e.salary) AS annual_bonus
FROM 
    employees e
ORDER BY 
    annual_bonus DESC;

-- Пункт 3
-- Создать представление с именем IT_Department_View, которое показывает EmployeeID,
-- FirstName, LastName и Salary только для сотрудников из отдела 'IT'

CREATE OR REPLACE VIEW IT_Department_View AS
SELECT 
    e.employeeid AS EmployeeID,
    e.firstname AS FirstName,
    e.lastname AS LastName,
    e.salary AS Salary
FROM 
    employees e
WHERE 
    e.department = 'IT';

-- Пункт 4
-- Выбрать данные из вашего представления IT_Department_View

SELECT * from IT_Department_View