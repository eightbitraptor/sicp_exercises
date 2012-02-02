(define (sum_of_squares a b c)
  (
   (define (first) (if (> a b) a b))
   (define (second) (if (> first c) first c))
   (+ (* first first) (* second second))))

(print (sum_of_squares 3 4 5))
