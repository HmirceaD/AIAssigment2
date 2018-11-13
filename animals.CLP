(deftemplate animal
	(slot type) 
	(slot squeak)
	(slot very_big)
	(slot long_neck)
	(slot trunk)
	(slot likes_water))

(deffacts animals "Animals"
	(animal (type squirrel) (squeak no) (very_big no))
	(animal (type mouse) (squeak yes) (very_big no))
	(animal (type giraffe) (long_neck yes) (very_big yes))	
	(animal (type elephant) (long_neck no) (very_big yes) (trunk yes))
	(animal (type hippo) (long_neck no) (very_big yes) (trunk yes)(likes_water yes))
	(animal (type rhino) (long_neck no) (very_big yes) (trunk yes)(likes_water no)))