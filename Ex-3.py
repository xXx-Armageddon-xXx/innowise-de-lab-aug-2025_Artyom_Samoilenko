from random import randint

secret_number = randint(1, 10)

current_number = None

while current_number != secret_number:
    
    current_number = int(input('Угадайте число от 1 до 10: '))
    
    if current_number != secret_number:
        
        print("Неверно, попробуйте еще раз.")
    
print('Поздравляю! Вы угадали число!')
