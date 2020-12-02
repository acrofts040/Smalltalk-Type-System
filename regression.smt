
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

;; tests for adding nonzero naturals
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
(check-print ((Natural fromSmall: 0) sdiv: 1) 0)
(check-print ((Natural fromSmall: 0) sdiv: 194) 0)

(check-print ((Natural fromSmall: 1) sdiv: 10) 0)
(check-print ((Natural fromSmall: 1) sdiv: 16) 0)
(check-print ((Natural fromSmall: 15) sdiv: 10) 1)
(check-print ((Natural fromSmall: 16) sdiv: 10) 1)
(check-print ((Natural fromSmall: 16) sdiv: 1) 16)
(check-print ((Natural fromSmall: 25) sdiv: 10) 2)

(check-error ((Natural fromSmall: 0) sdiv: 0))
(check-error ((Natural fromSmall: 16) sdiv: 0))

;; test for smod:
(check-expect ((Natural fromSmall: 0) smod: 1) 0)
(check-expect ((Natural fromSmall: 0) smod: 186) 0)
(check-expect ((Natural fromSmall: 1) smod: 10) 1)
(check-expect ((Natural fromSmall: 1) smod: 16) 1)
(check-expect ((Natural fromSmall: 15) smod: 10) 5)
(check-expect ((Natural fromSmall: 16) smod: 10) 6)
(check-expect ((Natural fromSmall: 16) smod: 1) 0)
(check-expect ((Natural fromSmall: 25) smod: 10) 5)

(check-error ((Natural fromSmall: 0) smod: 0))
(check-error ((Natural fromSmall: 16) smod: 0))

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

;;;;;;;;;; END TESTING FOR NATURAL ;;;;;;;;;;


;;;;;;;;;; TESTING FOR CLASS LARGE INTEGER ;;;;;;;;;;

;; check-assert tests for =
(check-assert ((LargeInteger fromSmall: 0) = (LargeInteger fromSmall: 0)))
(check-assert ((LargeInteger fromSmall: 1) = (LargeInteger fromSmall: 1)))
(check-assert ((LargeInteger fromSmall: 15) = (LargeInteger fromSmall: 15)))
(check-assert ((LargeInteger fromSmall: 16) = (LargeInteger fromSmall: 16)))
(check-assert ((LargeInteger fromSmall: 17) = (LargeInteger fromSmall: 17)))
(check-assert ((LargeInteger fromSmall: 22) = (LargeInteger fromSmall: 22)))
(check-assert ((LargeInteger fromSmall: 22356565) = (LargeInteger fromSmall: 22356565)))
(check-assert ((LargeInteger fromSmall: 42875982) = (LargeInteger fromSmall: 42875982)))

(check-assert (((LargeInteger fromSmall: 0) = (LargeInteger fromSmall: 22)) not))
(check-assert (((LargeInteger fromSmall: 1) = (LargeInteger fromSmall: 15)) not))
(check-assert (((LargeInteger fromSmall: 2) = (LargeInteger fromSmall: 1)) not))
(check-assert (((LargeInteger fromSmall: 24287589) = (LargeInteger fromSmall: 11352)) not))
(check-assert (((LargeInteger fromSmall: 1394364534) = (LargeInteger fromSmall: 32905874)) not))

;; check-assert tests for <
(check-assert ((LargeInteger fromSmall: 0) < (LargeInteger fromSmall: 1)))
(check-assert ((LargeInteger fromSmall: 0) < (LargeInteger fromSmall: 536)))
(check-assert ((LargeInteger fromSmall: 1) < (LargeInteger fromSmall: 2)))
(check-assert ((LargeInteger fromSmall: 15) < (LargeInteger fromSmall: 16)))
(check-assert ((LargeInteger fromSmall: 16) < (LargeInteger fromSmall: 26)))
(check-assert ((LargeInteger fromSmall: 17) < (LargeInteger fromSmall: 1352)))
(check-assert ((LargeInteger fromSmall: 17356) < (LargeInteger fromSmall: 135258)))

(check-assert (((LargeInteger fromSmall: 0) < (LargeInteger fromSmall: 0)) not))
(check-assert (((LargeInteger fromSmall: 1) < (LargeInteger fromSmall: 1)) not))
(check-assert (((LargeInteger fromSmall: 2) < (LargeInteger fromSmall: 1)) not))
(check-assert (((LargeInteger fromSmall: 228397598) < (LargeInteger fromSmall: 14673)) not))

;; check-assert tests for >
(check-assert ((LargeInteger fromSmall: 1) > (LargeInteger fromSmall: 0)))
(check-assert ((LargeInteger fromSmall: 15) > (LargeInteger fromSmall: 10)))
(check-assert ((LargeInteger fromSmall: 1565) > (LargeInteger fromSmall: 16)))
(check-assert ((LargeInteger fromSmall: 156554767) > (LargeInteger fromSmall: 16356)))
(check-assert ((LargeInteger fromSmall: 1565544687) > (LargeInteger fromSmall: 235357)))

(check-assert (((LargeInteger fromSmall: 0) > (LargeInteger fromSmall: 0)) not))
(check-assert (((LargeInteger fromSmall: 1) > (LargeInteger fromSmall: 1)) not))
(check-assert (((LargeInteger fromSmall: 1) > (LargeInteger fromSmall: 7)) not))
(check-assert (((LargeInteger fromSmall: 1384) > (LargeInteger fromSmall: 19345478)) not))
(check-assert (((LargeInteger fromSmall: 1384) > (LargeInteger fromSmall: 1385)) not))

;; check-assert tests for <=
(check-assert ((LargeInteger fromSmall: 0) <= (LargeInteger fromSmall: 0)))
(check-assert ((LargeInteger fromSmall: 0) <= (LargeInteger fromSmall: 1)))
(check-assert ((LargeInteger fromSmall: 1) <= (LargeInteger fromSmall: 1)))
(check-assert ((LargeInteger fromSmall: 1) <= (LargeInteger fromSmall: 2)))
(check-assert ((LargeInteger fromSmall: 15) <= (LargeInteger fromSmall: 15)))
(check-assert ((LargeInteger fromSmall: 15) <= (LargeInteger fromSmall: 16)))
(check-assert ((LargeInteger fromSmall: 16) <= (LargeInteger fromSmall: 26)))
(check-assert ((LargeInteger fromSmall: 3467646) <= (LargeInteger fromSmall: 36457563)))
(check-assert ((LargeInteger fromSmall: 127576) <= (LargeInteger fromSmall: 127576)))

(check-assert (((LargeInteger fromSmall: 243587) <= (LargeInteger fromSmall: 0)) not))
(check-assert (((LargeInteger fromSmall: 100) <= (LargeInteger fromSmall: 1)) not))
(check-assert (((LargeInteger fromSmall: 16555) <= (LargeInteger fromSmall: 1555)) not))
(check-assert (((LargeInteger fromSmall: 109385) <= (LargeInteger fromSmall: 126)) not))

;; check-assert tests for >=
(check-assert ((LargeInteger fromSmall: 0) >= (LargeInteger fromSmall: 0)))
(check-assert ((LargeInteger fromSmall: 1) >= (LargeInteger fromSmall: 0)))
(check-assert ((LargeInteger fromSmall: 15) >= (LargeInteger fromSmall: 15)))
(check-assert ((LargeInteger fromSmall: 16) >= (LargeInteger fromSmall: 15)))
(check-assert ((LargeInteger fromSmall: 1565) >= (LargeInteger fromSmall: 16)))
(check-assert ((LargeInteger fromSmall: 156556575) >= (LargeInteger fromSmall: 22222)))

(check-assert (((LargeInteger fromSmall: 0) >= (LargeInteger fromSmall: 1)) not))
(check-assert (((LargeInteger fromSmall: 1) >= (LargeInteger fromSmall: 5)) not))
(check-assert (((LargeInteger fromSmall: 1) >= (LargeInteger fromSmall: 798)) not))
(check-assert (((LargeInteger fromSmall: 1253) >= (LargeInteger fromSmall: 7982465)) not))
(check-assert (((LargeInteger fromSmall: 1000) >= (LargeInteger fromSmall: 1001)) not))

;; tests for negated
; (check-assert (((LargeInteger fromSmall: 0) negated) 0))
; (check-assert (((LargeInteger fromSmall: 1) negated) -1))
; (check-assert (((LargeInteger fromSmall: 12463556) negated) -12463556))
; (check-assert (((LargeInteger fromSmall: 2147483646) negated) -2147483646))


;; tests for isNegative
(check-assert (((LargeInteger fromSmall: 1) negated) isNegative))
(check-assert (((LargeInteger fromSmall: 31543653) negated) isNegative))
(check-assert (((LargeInteger fromSmall: 2147483646) negated) isNegative))

(check-assert (((LargeInteger fromSmall: 0) isNegative) not))
(check-assert ((((LargeInteger fromSmall: 0) negated) isNegative) not))
(check-assert (((LargeInteger fromSmall: 1) isNegative) not))
(check-assert (((LargeInteger fromSmall: 12463556) isNegative) not))
(check-assert (((LargeInteger fromSmall: 2147483646) isNegative) not))

;; tests for isNonnegative
(check-assert ((LargeInteger fromSmall: 0) isNonnegative))
(check-assert (((LargeInteger fromSmall: 0) negated) isNonnegative))
(check-assert ((LargeInteger fromSmall: 1) isNonnegative))
(check-assert ((LargeInteger fromSmall: 31543653) isNonnegative))
(check-assert ((LargeInteger fromSmall: 2147483646) isNonnegative))

(check-assert ((((LargeInteger fromSmall: 31543653) negated) isNonnegative) not))
(check-assert ((((LargeInteger fromSmall: 2147483646) negated) isNonnegative) not))

;; tests for isStrictlyPositive
(check-assert ((LargeInteger fromSmall: 1) isStrictlyPositive))
(check-assert ((LargeInteger fromSmall: 2463456) isStrictlyPositive))
(check-assert ((LargeInteger fromSmall: 2147483646) isStrictlyPositive))
(check-assert ((LargeInteger fromSmall: 2147483647) isStrictlyPositive))

(check-assert (((LargeInteger fromSmall: 0) isStrictlyPositive) not))
(check-assert ((((LargeInteger fromSmall: 0) negated) isStrictlyPositive) not))
(check-assert ((((LargeInteger fromSmall: 31543653) negated) isStrictlyPositive) not))
(check-assert ((((LargeInteger fromSmall: 2147483646) negated) isStrictlyPositive) not))

;; tests for adding + 0
(check-print ((LargeInteger fromSmall: 1)      + (LargeInteger fromSmall: 0)) 1)
(check-print ((LargeInteger fromSmall: 134656) + (LargeInteger fromSmall: 0)) 134656)
(check-print ((LargeInteger fromSmall: 0)      + (LargeInteger fromSmall: 2436075)) 2436075)

;; tests for adding pos + pos
(check-print ((LargeInteger fromSmall: 100) + (LargeInteger fromSmall: 2436075)) 2436175)
(check-print ((LargeInteger fromSmall: 10) + (LargeInteger fromSmall: 2436075)) 2436085)
(check-print ((LargeInteger fromSmall: 10000000) + (LargeInteger fromSmall: 10000000)) 20000000)
(check-print ((LargeInteger fromSmall: 1000000000) + (LargeInteger fromSmall: 1000000000)) 2000000000)
(check-print ((LargeInteger fromSmall: 2147483647) + (LargeInteger fromSmall: 0)) 2147483647) ; 2^31 - 1
(check-print ((LargeInteger fromSmall: 2147483646) + (LargeInteger fromSmall: 1)) 2147483647)

;; tests for adding pos + neg
; (check-print ((LargeInteger fromSmall: 100) + (LargeInteger fromSmall: -1)) 99)
; (check-print ((LargeInteger fromSmall: 0) + (LargeInteger fromSmall: 1) negated) 1)
; (check-print ((LargeInteger fromSmall: 0) + (LargeInteger fromSmall: -12234)) -12234)
; (check-print ((LargeInteger fromSmall: 2436175) + (LargeInteger fromSmall: -100)) 2436075)
; (check-print ((LargeInteger fromSmall: 10000000) + (LargeInteger fromSmall: -10000000)) 0)
; (check-print ((LargeInteger fromSmall: 2147483647) + (LargeInteger fromSmall: -2147483647)) 0)

;; tests for adding neg + pos
; (check-print ((LargeInteger fromSmall: -1) + (LargeInteger fromSmall: 100)) 99)
; (check-print ((LargeInteger fromSmall: -1) + (LargeInteger fromSmall: 0)) -1)
; (check-print ((LargeInteger fromSmall: -12234) + (LargeInteger fromSmall: 0)) -12234)
; (check-print ((LargeInteger fromSmall: -12234) + (LargeInteger fromSmall: 12234)) 0)
; (check-print ((LargeInteger fromSmall: -12234) + (LargeInteger fromSmall: 12233)) -1)
; (check-print ((LargeInteger fromSmall: -100) + (LargeInteger fromSmall: 2436175)) 2436075)
; (check-print ((LargeInteger fromSmall: -2147483647) + (LargeInteger fromSmall: 2147483647)) 0)

;; tests for adding neg + neg


;; tests for multiplying * 0
(check-print ((LargeInteger fromSmall: 1)      * (LargeInteger fromSmall: 0)) 0)
(check-print ((LargeInteger fromSmall: 134656) * (LargeInteger fromSmall: 0)) 0)
(check-print ((LargeInteger fromSmall: 0)      * (LargeInteger fromSmall: 2436075)) 0)

;; tests for multiplying pos * pos
(check-print ((LargeInteger fromSmall: 100) * (LargeInteger fromSmall: 2436075)) 243607500)
(check-print ((LargeInteger fromSmall: 10) * (LargeInteger fromSmall: 2436075)) 24360750)
(check-print ((LargeInteger fromSmall: 10000000) * (LargeInteger fromSmall: 100)) 1000000000)
(check-print ((LargeInteger fromSmall: 1000000000) * (LargeInteger fromSmall: 2)) 2000000000)
(check-print ((LargeInteger fromSmall: 2147483647) * (LargeInteger fromSmall: 1)) 2147483647) ; 2^31 - 1

;; tests for multiplying pos * neg
; (check-print ((LargeInteger fromSmall: 100) * (LargeInteger fromSmall: -1)) 99)
; (check-print ((LargeInteger fromSmall: 0) * (LargeInteger fromSmall: 1) negated) 1)
; (check-print ((LargeInteger fromSmall: 0) * (LargeInteger fromSmall: -12234)) -12234)
; (check-print ((LargeInteger fromSmall: 2436175) * (LargeInteger fromSmall: -100)) 2436075)
; (check-print ((LargeInteger fromSmall: 10000000) * (LargeInteger fromSmall: -10000000)) 0)
; (check-print ((LargeInteger fromSmall: 2147483647) * (LargeInteger fromSmall: -2147483647)) 0)

;; tests for multiplying neg * pos
; (check-print ((LargeInteger fromSmall: -1) * (LargeInteger fromSmall: 100)) 99)
; (check-print ((LargeInteger fromSmall: -1) * (LargeInteger fromSmall: 0)) -1)
; (check-print ((LargeInteger fromSmall: -12234) * (LargeInteger fromSmall: 0)) -12234)
; (check-print ((LargeInteger fromSmall: -12234) * (LargeInteger fromSmall: 12234)) 0)
; (check-print ((LargeInteger fromSmall: -12234) * (LargeInteger fromSmall: 12233)) -1)
; (check-print ((LargeInteger fromSmall: -100) * (LargeInteger fromSmall: 2436175)) 2436075)
; (check-print ((LargeInteger fromSmall: -2147483647) * (LargeInteger fromSmall: 2147483647)) 0)

;; tests for multiplying neg * neg


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
(check-print ((Natural fromSmall: 0) sdiv: 1) 0)
(check-print ((Natural fromSmall: 0) sdiv: 194) 0)

(check-print ((Natural fromSmall: 1) sdiv: 10) 0)
(check-print ((Natural fromSmall: 1) sdiv: 16) 0)
(check-print ((Natural fromSmall: 15) sdiv: 10) 1)
(check-print ((Natural fromSmall: 16) sdiv: 10) 1)
(check-print ((Natural fromSmall: 16) sdiv: 1) 16)
(check-print ((Natural fromSmall: 25) sdiv: 10) 2)

;(check-error ((Natural fromSmall: 0) sdiv: 0))
;(check-error ((Natural fromSmall: 16) sdiv: 0))

;; test for smod:
(check-expect ((Natural fromSmall: 0) smod: 1) 0)
(check-expect ((Natural fromSmall: 0) smod: 186) 0)
(check-expect ((Natural fromSmall: 1) smod: 10) 1)
(check-expect ((Natural fromSmall: 1) smod: 16) 1)
(check-expect ((Natural fromSmall: 15) smod: 10) 5)
(check-expect ((Natural fromSmall: 16) smod: 10) 6)
(check-expect ((Natural fromSmall: 16) smod: 1) 0)
(check-expect ((Natural fromSmall: 25) smod: 10) 5)

;(check-error ((Natural fromSmall: 0) smod: 0))
;(check-error ((Natural fromSmall: 16) smod: 0))

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

;;;;;;;;;; END TESTING FOR CLASS LARGE INTEGER ;;;;;;;;;;
