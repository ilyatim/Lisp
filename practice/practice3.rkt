#lang racket
(display "Task 13\n")
(define fst(read))
(define scnd(read))
(define thrd(read))
(define (makeList fst scnd thrd)
  (
   cond ((= (remainder (* fst scnd thrd) 2) 1)
         (list (* fst fst fst) (* scnd scnd scnd) (* thrd thrd thrd)))
        (else (+ fst scnd thrd))))
(display (makeList fst scnd thrd))

(display "\n")
(display "Task 18\n")
(define arg(read))
(define (checkArg arg)
  (cond ((= (remainder arg 2) 1)
        (* arg arg))
        (else (log arg 2.71))))
(display (checkArg arg))


(display "\n")
(display "Task 1\n")
(define firstList (list 0 2 3 4 5))
(define secondList (list 6 7 8 9 10))
(define (checkFirstArg arg)
  (cond ((and (= (remainder arg 1) 0) (> arg 0)) (list secondList))
  (else (append secondList firstList))))

(display (checkFirstArg (first firstList)))