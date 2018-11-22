(define (increment a) (+ 1 a))
; 定义序列求和这个抽象过程
(define (sum term a next b)
  (if (> a b)
    0
    (+ (term a) 
       (sum 
          term
          (next a) 
          next 
          b))))

; 等差数列求和
(define (sum_int a b)
    (define (term a) a)
    (sum term a increment b)
)

(define (square x) (* x x))
(define (sum_square a b)
  (sum square a 1+ b))


; 用迭代法求pi
(define (pi_sum a b)
(* 8  
  (sum 
      (lambda (i) (/ 1.0 (* i (+ i 2))))
      a
      (lambda (i) (+ i 4))
      b
      )
  )
)

(square 9) 
(sum_int 1 10)

(sum_square 1 3)

; (* 8 (pi_sum 1 9999))
(pi_sum 1 9999)