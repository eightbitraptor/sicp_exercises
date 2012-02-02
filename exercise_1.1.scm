10
;; => 10

(+ 5 3 4)
;; => 12

(- 9 1)
;; => 8

(/ 6 2)
;; => 3

(+ (* 2 4) (- 4 6))
;; => 6

(define a 3)
;; => associates a as 3

(define b (+ a 1))
;; => associates b as a+1 in this case 4

(+ a b (* a b))
;; => 19
;; equivalent to (+ 3 4 (* 3 4))

(= a b)
;; => false (equivalent to a == b)

(if (and (> b a) (< b (* a b)))
    b
    a)
;; => 4
;; because 4 > 3 and 4 < (4*3) therefore we return b

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
;; => 16
;; because the second predicate is true b is equal to 4 so we return (6 + 7 + 3) = 16

(+ 2 (if (> b a) b a))
;; => 6.
;; the if condition returns b (4) because b > a and adds 2

(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))
;; => 16
;; because a is less than b so the second predicate is true, and a + 1 = 4
