(define (i-expt b n)
    (iter-expt b 1 n)
)
(define (iter-expt b coefficient n)
    (cond
            ((= n 1) (* b coefficient))
            ((even? n) (iter-expt (* b b) coefficient (/ n 2)))
            (else (iter-expt b (* coefficient b) (- n 1)))
     )
)
(define (even? n)
    (= (remainder n 2) 0)
)
