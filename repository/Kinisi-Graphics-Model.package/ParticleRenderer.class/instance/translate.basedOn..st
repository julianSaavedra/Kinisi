private
translate: element basedOn: particle

	| position |
	position := particle position.
	position := (position x * positionFactor) @ (position y negated * positionFactor).
	element translateTo: position