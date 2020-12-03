#lang racket
;;;;Задание 1 - Описать функцию, которая находила бы сумму всех числовых
;;;;элементов списка с учетом наличия подсписков. Пример: для списка
;;;;(1 ((2 3) 4) 5 6) результатом будет 21
;;;;
(display "Задание 1\n")
(display " \n")
(define myList (list 1 (list 2 3) (list 4 5) 6))
(define (sumList myList)
  (if (null? myList)0
    (if (list? (car myList))
        (+ (sumList (car myList)) (sumList (cdr myList)))
        (+ (car myList) (sumList (cdr myList)))
     )
   )
 )
(display (sumList myList))
;;;;Задание 2 - Описать функцию, которая в исходном списке заменяет все
;;;;элементы списки результатами их реверсирования. Реверсирование призводится
;;;;на всех уровнях вложения. Пример: для списка '(1 ((2 3) 4) 5 6)
;;;;результатом будет : '(1 (4 (3 2)) 5 6).
(display "\nЗадание 2\n")
(display " \n")
(define myList2 (list 1 (list (list 2 3) 4) 5 6))
(define (sumSublist list)
  (for/list ([i (length list)])
    (if (list? (list-ref list i))
        (set! list (list-set list i (apply + (sumSublist(list-ref list i)))))
        (void))
    )
  list
)
(display (sumSublist myList2))
;;;;Задание 3 - Описать функцию, которая для заданного списка проверяет, является ли
;;;;он отсортированным по возрастанию (убыванию).
(display "\nЗадание 3\n")
(display " \n")
(define myList3 (list 1 2 3 3 4))
(define (checkIfSort lst)
  (if (null? (cdr lst))
    true
    (if (> (car lst) (second lst))
        false
        (checkIfSort (cdr lst))
    )
  )
)
(display (checkIfSort myList3))