(defrule check_color
   (person (hair-color ?c&~black&~brown))
   =>
   (printout t "Hair color is: " ?c crlf))

(deftemplate person
   (multislot name (type SYMBOL STRING) (cardinality 2 4))
   (slot age (type INTEGER) (range 20 25))
   (slot hair-color))