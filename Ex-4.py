scores = [75, 88, -10, 95, 100, -25, 89] # Первый случай
#scores = [75, 88, 95, 0, 100]           # Второй случай

total_score = 0

interrupted = False # Флаг, показывающий, был ли прерван цикл

for score in scores:
    
    if score < 0:
        continue
    
    elif score == 0:
        interrupted = True
        break
    
    else:
       total_score += score
       print(f"Добавлен балл: {score}")
 
if interrupted:
    print("Обработка прервана")
    
else:
    print("Все данные обработаны")
    
print(f"\nИтоговая сумма баллов: {total_score}")
