(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

;; This procedure takes 2 arguments a and b. It always adds the absolute value of b to a.
;; If a negative value of b is passed in then when the inner combination is evaluated then
;; the return value is the - operator, meaning that the combination is evaluated as, for
;; example a=1, b=-2 : a--2 therefore a+2
;; if the value of b is positive then the inner combination returns + thus evaluating the 
;; addition as normal ie. a=1,b=2 : (+ 1 2)
