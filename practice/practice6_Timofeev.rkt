#lang racket
(display "Задание 1\n")
(display "Вычисление площади кольца \n")
(display "Радиус кольца (см) и Радиус отверстия (см) => ")
(define pi 3.14)
(let ring-area ([R (read)] [r (read)])
 (
  cond ((or (> r R) (< R 0) (< r 0)) (display "Неверное значение\n"))
(else (display (format"Площадь кольца ~a кв см\n"
                (* pi (- (* R R) (* r r))))))
  ))

(display "Задание 2\n")
(display "Определение високосности года \n")
(display "Введите год => ")
(let isLeap([year (read)])
  (
   cond ((= (remainder year 400) 0) (display "Год високосный\n"))
        ((= (remainder year 100) 0) (display "Год невисокосный\n"))
        ((= (remainder year 4) 0) (display "Год високосный\n"))
        (else (display "Год невисокосный\n"))
   )
  )

(display "Задание 3\n")
(display "Вычисление стоимости покупки с учетом скидки \n")
(display "Введите сумму покупки => ")
(let price-with-sale([price (read)])
  (
   cond ((> price 1000) ((display (format "Сумма покупки = ~a\n" (* price 0.9)))))
        (else (display (format "Сумма покупки = ~a\n" price)))
  )
  )
