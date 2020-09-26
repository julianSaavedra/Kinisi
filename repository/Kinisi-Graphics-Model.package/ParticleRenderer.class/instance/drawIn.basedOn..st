rendering
drawIn: canvas basedOn: particle

	| newShape |
	newShape := baseShape copy.
	newShape model: particle.
	canvas addShape: newShape.
	scaleToMovedParticle ifNotNil: [:scaleToUse |
		| position |
		position := particle position.
		position := (position x * scaleToMovedParticle) @ (position y negated * scaleToMovedParticle).
		newShape position: position ].
	renderers do: [:renderer | renderer drawIn: canvas basedOn: particle for: newShape ]