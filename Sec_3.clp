(defrule check_animal
   (animal (type ?t&~dog&~cat))
   =>
   (printout t "Animal is: " ?t crlf))

(defrule Odd_number
   (number ?n)
   (test (integerp ?n))
   (test (= (mod ?n 2) 1))
   =>
   (printout t "The number is odd" crlf))