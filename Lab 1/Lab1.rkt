#lang racket

;; Calculate the area of a circle with the specified radius.
(define (area-of-circle radius)
  (* pi radius radius))
;; Calculate the area of a ring whose radius is outer and
;; whose hole has a radius of inner.
(define (area-of-ring outer inner)
  (- (area-of-circle outer)
     (area-of-circle inner)))

(define (f x)
  (+ x 10))

(define (sum-coins x y z w)
  (+ x (* y 5) (* z 10) (* z 25)))

(define (area-of-cylinder-one-def r h)
  (+ (* 2 pi r h) (* 2 pi (expt r 2))))

(define (area-of-cylinder r h)
  (+ (* 2 pi r h) (* 2 (area-of-circle r))))

(define (interest a)
  (cond ((or (< a 1000) (= a 1000)) (* a 0.04)) ((or (< a 5000) (= a 5000)) (* a 0.045)) ((> a 5000) (* a 0.05))))

(define (how-many-solutions a b c)
  (cond ((> (expt b 2) (* 4 a c)) 2) ((= (expt b 2) (* 4 a c)) 1) ((< (expt b 2) (* 4 a c)) 0)))