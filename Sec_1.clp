(deftemplate animal
   (slot type))

(defrule check_animal
   (animal (type ?t&~dog))
   =>
   (printout t "Animal type is: " ?t crlf))

(defrule pos_int
   (declare (salience 10))
   ?f <- (number ?n)
   (test (integerp ?n))
   (test (> ?n 0))
   =>
   (printout t "The number is a positive integer" crlf))