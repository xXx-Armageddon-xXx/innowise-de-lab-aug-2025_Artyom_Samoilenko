-- Задание 2

-- Пункт 1
-- Создать новую таблицу с именем Departments со столбцами:
-- DepartmentID (SERIAL PRIMARY KEY), DepartmentName
-- (VARCHAR(50), UNIQUE, NOT NULL), Location (VARCHAR(50)).

CREATE TABLE Departments(
	DepartmentID SERIAL PRIMARY KEY,
	DepartmentName VARCHAR(50) UNIQUE NOT NULL,
	Location VARCHAR(50)
)

-- Пункт 2. Изменить таблицу Employees, добавив новый столбец с именем Email (VARCHAR(100))

ALTER TABLE employees ADD COLUMN email VARCHAR(100);

-- Пункт 3. Добавить ограничение UNIQUE к столбцу Email в таблице Employees, предварительно заполнив любыми значениями
ALTER TABLE employees ADD CONSTRAINT UQ_Email UNIQUE (email);

-- Пункт 4. Переименовать столбец Location в таблице Departments в OfficeLocation.
ALTER TABLE Departments RENAME COLUMN location TO OfficeLocation;
