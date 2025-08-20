# innowise-de-lab-aug-2025_Artyom_Samoilenko

1 задание:
  1) Вставить двух новых сотрудников в таблицу Employees.

<img width="664" height="178" alt="изображение" src="https://github.com/user-attachments/assets/f2bce486-6a66-4dd1-95b4-ad225e779ff4" />

  2) Выбрать всех сотрудников из таблицы Employees.

<img width="689" height="221" alt="изображение" src="https://github.com/user-attachments/assets/e7ae32ca-742d-48d2-b1e6-007e09574e69" />

  3) Выбрать только FirstName и LastName сотрудников из отдела 'IT'.

<img width="295" height="116" alt="изображение" src="https://github.com/user-attachments/assets/bd0b1b63-ec02-4143-a7e8-b5a2fd46662d" />

  4) Обновить Salary 'Alice Smith' до 65000.00.

<img width="670" height="188" alt="изображение" src="https://github.com/user-attachments/assets/2108a137-9255-46d9-8db8-4c9b11a68edc" />

  5) Удалить сотрудника, чья LastName — 'Prince'.

<img width="670" height="158" alt="изображение" src="https://github.com/user-attachments/assets/f01888a0-d899-4cff-921d-deee3fc2efa1" />

  6) Проверить все изменения, используя SELECT * FROM Employees;.
     
<img width="695" height="206" alt="изображение" src="https://github.com/user-attachments/assets/64f19a76-8fe6-49b4-b096-9590c9485553" />

2 Задание:
  1) Создать новую таблицу с именем Departments со столбцами: DepartmentID (SERIAL PRIMARY KEY), DepartmentName (VARCHAR(50), UNIQUE, NOT NULL), Location (VARCHAR(50)).

<img width="491" height="82" alt="изображение" src="https://github.com/user-attachments/assets/6a3c442d-670c-4299-80b4-d524c8256b2c" />
     
  2) Изменить таблицу Employees, добавив новый столбец с именем Email (VARCHAR(100)).

<img width="797" height="210" alt="изображение" src="https://github.com/user-attachments/assets/17732cd0-f64d-4804-aedc-4855d0ce4911" />

  3) Добавить ограничение UNIQUE к столбцу Email в таблице Employees, предварительно заполнив любыми значениями

<img width="861" height="93" alt="изображение" src="https://github.com/user-attachments/assets/ede8ea3c-f289-4d1e-bec4-0c78a1a1b551" />

  4) Переименовать столбец Location в таблице Departments в OfficeLocation

<img width="508" height="40" alt="изображение" src="https://github.com/user-attachments/assets/f129ee50-b45b-46bb-a943-0c26c18b815f" />

3 Задание:
1) Создать нового пользователя PostgreSQL (роль) с именем hr_user и простым паролем.
2) Предоставить hr_user право SELECT на таблицу Employees.

<img width="158" height="60" alt="изображение" src="https://github.com/user-attachments/assets/08d31e25-f8cb-43ab-a3da-b8ebd9907af6" />


3) Тест: В новой сессии подключиться как hr_user и попытаться выполнить SELECT * FROM Employees;. (Должно сработать).

<img width="959" height="258" alt="изображение" src="https://github.com/user-attachments/assets/a4aee293-da70-459d-ac1b-d9aae1176e04" />


4) Как hr_user, попытаться выполнить INSERT нового сотрудника в Employees. (Должно завершиться неудачей).

<img width="633" height="191" alt="изображение" src="https://github.com/user-attachments/assets/d19459d8-0f1a-45a2-b62c-3bc3a72d508e" />

5) Как пользователь-администратор, предоставить hr_user права INSERT и UPDATE на таблицу Employees.
6) Тест: Как hr_user, попробовать выполнить INSERT и UPDATE сотрудника. (Теперь должно сработать).

<img width="790" height="239" alt="изображение" src="https://github.com/user-attachments/assets/9c6ffa43-dc74-42ff-9660-c9f0f15dcc21" />

Задание 4
  1. Увеличить Salary всех сотрудников в отделе 'HR' на 10%.

<img width="908" height="223" alt="изображение" src="https://github.com/user-attachments/assets/67bfc0a8-9fc4-463f-9245-b0522f16bdfc" />

  2. Обновить Department любого сотрудника с Salary выше 70000.00 на 'Senior IT'.

<img width="899" height="190" alt="изображение" src="https://github.com/user-attachments/assets/f1427ace-f09e-4467-803e-747652581ae4" />

  3. Удалить всех сотрудников, которые не назначены ни на один проект в таблице EmployeeProjects. Подсказка: Используйте подзапрос NOT EXISTS или LEFT JOIN
  
  <img width="901" height="123" alt="изображение" src="https://github.com/user-attachments/assets/e6b80c65-c1db-4900-a9be-10f6a87bfc2e" />

  4. Вставить новый проект и назначить на него двух существующих сотрудников с определенным количеством HoursWorked в EmployeeProjects, и все это в одном блоке BEGIN/COMMIT.
(Это задание я так по итогу и не смог сделать)

Задание 5
1. Функция: Создать функцию PostgreSQL с именем CalculateAnnualBonus, которая принимает employee_id и Salary в качестве входных данных и возвращает рассчитанную
сумму бонуса (10 % от Salary) для этого сотрудника. Используйте PL/pgSQL для тела функции.

<img width="368" height="54" alt="изображение" src="https://github.com/user-attachments/assets/a0089083-df62-425d-b74f-549f92f102e9" />

2. Использовать эту функцию в операторе SELECT, чтобы увидеть потенциальный бонус для каждого сотрудника.

<img width="699" height="144" alt="изображение" src="https://github.com/user-attachments/assets/91db4f9e-f81e-4769-a74c-fa3c480a59c6" />

3. Представление (View): Создать представление с именем IT_Department_View, которое показывает EmployeeID, FirstName, LastName и Salary только для сотрудников из отдела 'IT'.

<img width="502" height="57" alt="изображение" src="https://github.com/user-attachments/assets/a5dd1082-a745-4d5d-baaf-e146d229aa94" />

4. Выбрать данные из вашего представления IT_Department_View.

<img width="551" height="104" alt="изображение" src="https://github.com/user-attachments/assets/9b6a5cde-9015-42cc-ab3b-0e04561c378f" />















