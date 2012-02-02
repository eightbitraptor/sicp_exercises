(define (square x)
  (* x x ))

(define (sum-of-squares x y z)
  (if (>= x y)
      (+ (square x) (square (if (>= y z) y z)))
      (+ (square y) (square (if (>= x z) x z)))))
