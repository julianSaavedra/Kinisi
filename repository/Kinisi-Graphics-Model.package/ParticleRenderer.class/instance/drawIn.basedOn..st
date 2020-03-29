rendering
drawIn: view basedOn: particle

	| element |
	element := RTElement new.
	element model: particle.
	element addShape: shape.
	view add: element.
	scaleToMovedParticle ifNotNil: [:scaleToUse |
		| position |
		position := particle position.
		position := (position x * scaleToMovedParticle) @ (position y negated * scaleToMovedParticle).
		element translateTo: position ].
	renderers do: [:renderer | renderer drawIn: view basedOn: particle for: element ]