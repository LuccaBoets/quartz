#lang r7rs

(#%require racket/trace)
(import (scheme base)
        (scheme write))

(define (string->number s)
  (define (hulp s n)
    (if (= n -1)
        0
        (+ (- (char->integer (string-ref s n)) 48) (* 10 (hulp s (- n 1))))))
  (trace hulp)
  (hulp s (- (string-length s) 1)))

; (display (string->number "1234"))


(define (match t p)
  (define n-t (string-length t))
  (define n-p (string-length p))
  (let loop
    ((i-t 0)
     (i-p 0))
    (cond
      ((> i-p (- n-p 1))
       (cons i-t (loop (+ i-t 1) 0)))
      ((> i-t (- n-t n-p))
       '())
      ((eq? (string-ref t (+ i-t i-p)) (string-ref p i-p))
       (loop i-t (+ i-p 1)))
      (else
       (loop (+ i-t 1) 0)))))

; (display (match "bababxzy" "bab"))

(define (match2 t p)
  (define n-t (string-length t))
  
  (let loop
    ((i-t 0)
     (i-p 0)
     (p p))
    (display p)
    (newline)
    (cond
      ((null? p) #t)
      ((> i-p (- (string-length (car p)) 1))
       (loop i-t 0 (cdr p)))
      ((> i-t (- n-t (string-length (car p))))
       #f)
      ((eq? (string-ref t (+ i-t i-p)) (string-ref (car p) i-p))
       (loop i-t (+ i-p 1) p))
    (else
     (loop (+ i-t 1) 0 p)))))

(display (match2 "bababxzy" '("bab" "xz")))