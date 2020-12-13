#lang racket
(define (buble-sort list)
  (define sorted-list list)
  (define temp 0)
   (if (> 2 (length list))
       (void)
       (begin
         (for/list ([i (- (length list) 1)])
           (for/list ([j (-(- (length list) 1) i)])
             (if (> (list-ref sorted-list j) (list-ref sorted-list (+ j 1)))
                 (begin
                   (set! temp (list-ref sorted-list (+ j 1)))
                   (set! sorted-list (list-set sorted-list (+ j 1) (list-ref sorted-list j)))
                   (set! sorted-list (list-set sorted-list j temp))
                 )
                 (void)
             )
           )
         )
       )
   )
  sorted-list
  )

(display "Вариант 1\n")
(display "Введите 3 числа")
(define mList (list (read) (read) (read)))
(buble-sort mList)