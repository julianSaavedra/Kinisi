private
translate: element basedOn: particleState

	| position |
	position := particleState position.
	position := (position x * positionFactor) @ (position y negated * positionFactor).
	element translateTo: position