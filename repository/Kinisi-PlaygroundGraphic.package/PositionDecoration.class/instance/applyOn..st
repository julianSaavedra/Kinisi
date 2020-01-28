action
applyOn: element

	| point |
	point := positionTranformation value: element model position.
	element translateTo: (point x @ point y negated).