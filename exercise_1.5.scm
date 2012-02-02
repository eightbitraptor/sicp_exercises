(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

;; test
(test 0 (p))

;; with normal order expansion the operands are expanded as they are needed
;; this means that the first step is to expand the test operators as follows:

(if (= 0 0) 0 (p))

;; this never needs to expand (p) because the expression (= 0 0) evals as true
;; and thus 0 is returned.

;; with applicative order expansion all the operands are expanded before the 
;; evaluation happens. so because (define (p) (p)) expands to return itself
;; we get into an infinite expansion loop (and presumably leak memory)
