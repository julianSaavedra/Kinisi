asserting
assert: aParticle isNotInTheTheSamePositionAs: anotherParticle

	(aParticle isInTheSamePositionAs: anotherParticle)
		ifTrue: [ PhysicsModelError signal: 	'Particles can not be in the same position when interacting to each other.' ]