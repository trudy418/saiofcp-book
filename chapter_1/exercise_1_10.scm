(define (A x y)
    (cond ((= y 0) 0)
          ((= x 0) (* 2 y))
          ((= y 1) 2)
          (else 
                (A 
                    (- x 1)
                    (A x (- y 1))
                )
          )
    )
)

(newline)
(display (A 1 10))
(newline)
(display (A 2 4))
(newline)
(display (A 3 3))

(newline)
(display (define (f n) (A 0 n))) ;;; 2n
(newline)
(display (define (g n) (A 1 n))) ;;; n * n
(newline)
(display (define (h n) (A 2 n))) ;;; 2^(2^(n-1))