; Exercise 1.3: Define a procedure that takes three numbers as
; arguments and returns the sum of the squares of the two
; larger numbers. 

(define (max-sum a b c)
  (define (min a b)
    (if (< a b) a
    b))

  (define (minnum a b c)
    (min (min a b) c))

  (cond ((= a (minnum a b c)) (+ b c))
        ((= b (minnum a b c)) (+ a c))
        (else (+ a b)))
  )
