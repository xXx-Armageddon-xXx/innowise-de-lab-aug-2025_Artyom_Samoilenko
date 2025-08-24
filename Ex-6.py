print("Добро пожаловать в калькулятор!")
print("Инструкция:\n    1. Если хотите закончить вычисления, введите латинскую букву 'x' при выборе операции")
print("    2. Если хотите очистить очистить вычисления, введите латинскую букву 'c'")

operation = None # Создаем пустую переменную, чтобы начать внешний цикл

while operation != 'x': # При вводе 'x' вычисления заканчиваются
    
    current_number = float(input("\nВведите первое число: "))

    operation = None # Это нужно для того, чтобы при очистке калькулятора путем ввода 'c', мы могли продолжить вычисления
    
    while operation != 'c' and operation != 'x':

        operation = input("\nВведите операцию(+,-,*,/,x,c): ")

        if operation != 'x' and operation != 'c':
            second_number = float(input("\nВведите второе число: ")) # Это нужно, чтобы при вводе 'x' или 'c' калькулятор не просил ввести второе число, т.к это не имеет смысла
        
        if operation == '+':
            current_number += second_number # Сложение
            
        elif operation == '-':
            current_number -= second_number # Вычитание
            
        elif operation == '*':
            current_number *= second_number # Произведение
            
        elif operation == '/':
            current_number /= second_number # Деление
            
        elif operation != 'x' and operation != 'c':
            print("\nПохоже вы выбрали неверное действие! Попробуйте снова.") # Пользователь ввел неверный символ

        print(f'\nИтого: {current_number}')
        
print(f"\nКонец программы!")
