
;;;;;;;;;;;;;;;;;;; COMP 105 SMALL ASSIGNMENT ;;;;;;;;;;;;;;;
;; regression.smt
;; COMP 105 - hw9 small
;; Fall 2020

;; Name: Ann Marie Burke (aburke04)
;; Partner: Andrew Crofts

(use bignum.smt)

;;;;;;;;;; TESTING FOR CLASS NATURAL ;;;;;;;;;;

;; printrep tests for creating new natural numbers
; ((Natural fromSmall: 0) printrep)
; ((Natural fromSmall: 1) printrep)
; ((Natural fromSmall: 10) printrep)
; ((Natural fromSmall: 15) printrep)
; ((Natural fromSmall: 16) printrep)
; ((Natural fromSmall: 17) printrep)
; ((Natural fromSmall: 127) printrep)
; ((Natural fromSmall: 128) printrep)
; ((Natural fromSmall: 129) printrep)
((Natural fromSmall: 143) printrep)

;; check-assert tests for =
(check-assert ((Natural fromSmall: 0) = (Natural fromSmall: 0)))
(check-assert ((Natural fromSmall: 1) = (Natural fromSmall: 1)))
(check-assert ((Natural fromSmall: 15) = (Natural fromSmall: 15)))
(check-assert ((Natural fromSmall: 16) = (Natural fromSmall: 16)))
(check-assert ((Natural fromSmall: 17) = (Natural fromSmall: 17)))
(check-assert ((Natural fromSmall: 22) = (Natural fromSmall: 22)))

(check-assert (((Natural fromSmall: 0) = (Natural fromSmall: 22)) not))
(check-assert (((Natural fromSmall: 1) = (Natural fromSmall: 15)) not))
(check-assert (((Natural fromSmall: 2) = (Natural fromSmall: 1)) not))

;; check-assert tests for <
(check-assert ((Natural fromSmall: 0) < (Natural fromSmall: 1)))
(check-assert ((Natural fromSmall: 0) < (Natural fromSmall: 536)))
(check-assert ((Natural fromSmall: 1) < (Natural fromSmall: 2)))
(check-assert ((Natural fromSmall: 15) < (Natural fromSmall: 16)))
(check-assert ((Natural fromSmall: 16) < (Natural fromSmall: 26)))
(check-assert ((Natural fromSmall: 17) < (Natural fromSmall: 1352)))

(check-assert (((Natural fromSmall: 0) < (Natural fromSmall: 0)) not))
(check-assert (((Natural fromSmall: 1) < (Natural fromSmall: 1)) not))
(check-assert (((Natural fromSmall: 2) < (Natural fromSmall: 1)) not))

;; check-assert tests for >
(check-assert ((Natural fromSmall: 1) > (Natural fromSmall: 0)))
(check-assert ((Natural fromSmall: 15) > (Natural fromSmall: 10)))
(check-assert ((Natural fromSmall: 1565) > (Natural fromSmall: 16)))

(check-assert (((Natural fromSmall: 0) > (Natural fromSmall: 0)) not))
(check-assert (((Natural fromSmall: 1) > (Natural fromSmall: 1)) not))
(check-assert (((Natural fromSmall: 1) > (Natural fromSmall: 7)) not))

;; check-assert tests for <=
(check-assert ((Natural fromSmall: 0) <= (Natural fromSmall: 0)))
(check-assert ((Natural fromSmall: 0) <= (Natural fromSmall: 1)))
(check-assert ((Natural fromSmall: 1) <= (Natural fromSmall: 1)))
(check-assert ((Natural fromSmall: 1) <= (Natural fromSmall: 2)))
(check-assert ((Natural fromSmall: 15) <= (Natural fromSmall: 15)))
(check-assert ((Natural fromSmall: 15) <= (Natural fromSmall: 16)))
(check-assert ((Natural fromSmall: 16) <= (Natural fromSmall: 26)))
(check-assert ((Natural fromSmall: 127) <= (Natural fromSmall: 128)))
(check-assert ((Natural fromSmall: 127) <= (Natural fromSmall: 127)))
(check-assert ((Natural fromSmall: 17) <= (Natural fromSmall: 1352)))

(check-assert (((Natural fromSmall: 24) <= (Natural fromSmall: 0)) not))
(check-assert (((Natural fromSmall: 100) <= (Natural fromSmall: 1)) not))
(check-assert (((Natural fromSmall: 16) <= (Natural fromSmall: 1)) not))
(check-assert (((Natural fromSmall: 127) <= (Natural fromSmall: 126)) not))

;; check-assert tests for >=
(check-assert ((Natural fromSmall: 0) >= (Natural fromSmall: 0)))
(check-assert ((Natural fromSmall: 1) >= (Natural fromSmall: 0)))
(check-assert ((Natural fromSmall: 15) >= (Natural fromSmall: 15)))
(check-assert ((Natural fromSmall: 16) >= (Natural fromSmall: 15)))
(check-assert ((Natural fromSmall: 1565) >= (Natural fromSmall: 16)))

(check-assert (((Natural fromSmall: 0) >= (Natural fromSmall: 1)) not))
(check-assert (((Natural fromSmall: 1) >= (Natural fromSmall: 5)) not))
(check-assert (((Natural fromSmall: 1) >= (Natural fromSmall: 798)) not))

;; printrep tests for adding nat + 0
;(((Natural fromSmall: 0) + (Natural fromSmall: 0)) printrep) ; 0 + 0
;(((Natural fromSmall: 0) + (Natural fromSmall: 1)) printrep) ; 0 + 1
;(((Natural fromSmall: 1) + (Natural fromSmall: 0)) printrep) ; 1 + 0
;(((Natural fromSmall: 0) + (Natural fromSmall: 10)) printrep) ; 0 + 10
;(((Natural fromSmall: 10) + (Natural fromSmall: 0)) printrep) ; 10 + 0
;(((Natural fromSmall: 0) + (Natural fromSmall: 16)) printrep) ; 0 + 16
;(((Natural fromSmall: 16) + (Natural fromSmall: 0)) printrep) ; 16 + 0
;(((Natural fromSmall: 0) + (Natural fromSmall: 143)) printrep) ; 0 + 143
(((Natural fromSmall: 143) + (Natural fromSmall: 0)) printrep) ; 143 + 0

;; printrep tests for adding nonzero naturals
(check-print ((Natural fromSmall: 1)   + (Natural fromSmall: 1)) 2)
(check-print ((Natural fromSmall: 1)   + (Natural fromSmall: 2)) 3)
(check-print ((Natural fromSmall: 1)   + (Natural fromSmall: 9)) 10)
(check-print ((Natural fromSmall: 9)   + (Natural fromSmall: 1)) 10)
(check-print ((Natural fromSmall: 1)   + (Natural fromSmall: 15)) 16)
(check-print ((Natural fromSmall: 15)  + (Natural fromSmall: 1)) 16)
(check-print ((Natural fromSmall: 1)   + (Natural fromSmall: 127)) 128)
(check-print ((Natural fromSmall: 127) + (Natural fromSmall: 1)) 128)
(check-print ((Natural fromSmall: 1)   + (Natural fromSmall: 143)) 144)
(check-print ((Natural fromSmall: 143) + (Natural fromSmall: 1)) 144)
(check-print ((Natural fromSmall: 1)   + (Natural fromSmall: 1023)) 1024)
(check-print ((Natural fromSmall: 1023) + (Natural fromSmall: 1)) 1024)

;; check-print tests for multiplying nat * 0
(check-print ((Natural fromSmall: 0)  * (Natural fromSmall: 0)) 0)
(check-print ((Natural fromSmall: 0)  * (Natural fromSmall: 1))  0)
(check-print ((Natural fromSmall: 1)  * (Natural fromSmall: 0))  0)
(check-print ((Natural fromSmall: 0)  * (Natural fromSmall: 10)) 0)
(check-print ((Natural fromSmall: 10) * (Natural fromSmall: 0))  0)
(check-print ((Natural fromSmall: 0)  * (Natural fromSmall: 16)) 0)
(check-print ((Natural fromSmall: 16) * (Natural fromSmall: 0))  0)
(check-print ((Natural fromSmall: 0)  * (Natural fromSmall: 143)) 0)
(check-print ((Natural fromSmall: 143) * (Natural fromSmall: 0)) 0)

;; check-print tests for multiplying nat * nat
(check-print ((Natural fromSmall: 1) * (Natural fromSmall: 1)) 1)     
(check-print ((Natural fromSmall: 1) * (Natural fromSmall: 2)) 2)     
(check-print ((Natural fromSmall: 2) * (Natural fromSmall: 2)) 4)     
(check-print ((Natural fromSmall: 27) * (Natural fromSmall: 1)) 27)
(check-print ((Natural fromSmall: 1) * (Natural fromSmall: 27)) 27)
(check-print ((Natural fromSmall: 2) * (Natural fromSmall: 27)) 54)
(check-print ((Natural fromSmall: 12) * (Natural fromSmall: 12)) 144)
(check-print ((Natural fromSmall: 122) * (Natural fromSmall: 227)) 27694)


;; check-print tests for sdiv:
(check-print ((Natural fromSmall: 0) sdiv: 0) 0)   ; 0 / 0   = 0
(check-print ((Natural fromSmall: 0) sdiv: 1) 0)   ; 0 / 1   = 0
(check-print ((Natural fromSmall: 0) sdiv: 194) 0) ; 0 / 194 = 0

(check-print ((Natural fromSmall: 1) sdiv: 10) 0)  ; 1 / 10  = 0
(check-print ((Natural fromSmall: 1) sdiv: 16) 0)  ; 1 / 16  = 0
(check-print ((Natural fromSmall: 15) sdiv: 10) 1) ; 15 / 10 = 1
(check-print ((Natural fromSmall: 16) sdiv: 10) 1) ; 16 / 10 = 1
(check-print ((Natural fromSmall: 16) sdiv: 1) 16)  ; 16 / 1  = 16
(check-print ((Natural fromSmall: 16) sdiv: 1) 16)  ; 16 / 0  = 16????
(check-print ((Natural fromSmall: 25) sdiv: 10) 2) ; 25 / 10 = 2

;; print test for smod:
; ((Natural fromSmall: 0) smod: 0)   ; 0 % 0   = 0
; ((Natural fromSmall: 0) smod: 1)   ; 0 % 1   = 0
; ((Natural fromSmall: 0) smod: 186) ; 0 % 186 = 0

; ((Natural fromSmall: 1) smod: 10)  ; 1 % 10  = 1
; ((Natural fromSmall: 1) smod: 16)  ; 1 % 16  = 1
; ((Natural fromSmall: 15) smod: 10) ; 15 % 10 = 5
; ((Natural fromSmall: 16) smod: 10) ; 16 % 10 = 6
; ((Natural fromSmall: 16) smod: 1)  ; 16 % 1  = 0
((Natural fromSmall: 16) smod: 1)  ; 16 % 0  = 0???
((Natural fromSmall: 25) smod: 10) ; 25 % 10 = 5

;; check-expect tests
;(check-expect ((Natural fromSmall: 0) decimal)     '( 0 ))
;(check-expect ((Natural fromSmall: 1) decimal)     '( 1 ))
;(check-expect ((Natural fromSmall: 15) decimal)    '( 1 5 ))
;(check-expect ((Natural fromSmall: 12345) decimal) '( 1 2 3 4 5 ))


;; check-print tests
(check-print (Natural fromSmall: 0)  0)
(check-print (Natural fromSmall: 1)  1)
(check-print (Natural fromSmall: 10) 10)
(check-print (Natural fromSmall: 15) 15)
(check-print (Natural fromSmall: 16) 16)
(check-print (Natural fromSmall: 17) 17)
(check-print (Natural fromSmall: 143) 143)
(check-print ((Natural fromSmall: 5824) + (Natural fromSmall: 1000)) 6824)
(check-print ((Natural fromSmall: 256492) * (Natural fromSmall: 666481))
             170947044652)


;;;;;;;;;; END TESTING ;;;;;;;;;;