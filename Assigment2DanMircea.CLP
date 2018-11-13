(defrule akinator " "
 =>
  (printout t "Is it very big?(yes=1/no=0)" crlf)
  (bind ?answer (read))
  (if (= ?answer 1)
	then
	(assert (very_big yes))
	else
	(assert (very_big no))))

;;; not big
(defrule is_big_no " "
 (very_big no)
  =>
 (printout t "Does it squeak?(yes=1/no=0)" crlf)
 (bind ?answer (read))
 (if (= ?answer 1)
	then
	(assert (squeak yes))
	else
	(assert (squeak  no))))

;;; no squeak
(defrule is_squeak_no " "
 (squeak  no)
  =>
  (printout t "It's a squirell" crlf))

;;; squeak
(defrule is_squeak_yes " "
 (squeak  yes)
  =>
  (printout t "It's a mouse" crlf))

;;; is big
(defrule is_big_yes " "
 (very_big yes)
  =>
 (printout t "Does it have a long neck?(yes=1/no=0)" crlf)
 (bind ?answer (read))
 (if (= ?answer 1)
	then
	(assert (l_neck yes))
	else
	(assert (l_neck no))))

;;;it has a long neck
(defrule is_neck_yes " "
 (l_neck yes)
  =>
  (printout t "It's a giraffe" crlf))

;;;it does not have a long neck
(defrule is_neck_no " "
 (l_neck no)
  =>
  (printout t "Does it have a trunk?(yes=1/no=0)" crlf)
  (bind ?answer (read))
  (if (= ?answer 1)
	then
	(assert (trunk yes))
	else
	(assert (trunk no))))

;;; it has trunk
(defrule is_trunk_yes " "
 (trunk yes)
  =>
  (printout t "It's an elephant" crlf))

;;;it doesn't have a trunk
(defrule is_trunk_no " "
 (trunk no)
  =>
  (printout t "Does it like to be in water?(yes=1/no=0)" crlf)
  (bind ?answer (read))
  (if (= ?answer 1)
	then
	(assert (water yes))
	else
	(assert (water no))))

;;;likes water
(defrule is_water_yes " "
 (water yes)
  =>
  (printout t "It's a hippo" crlf))

;;;doesn't like water
(defrule is_water_no " "
 (water no)
  =>
  (printout t "It's a rhino" crlf))