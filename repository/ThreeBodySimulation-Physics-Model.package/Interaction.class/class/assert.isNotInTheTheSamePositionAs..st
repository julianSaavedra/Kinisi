asserting
assert: aParticle isNotInTheTheSamePositionAs: anotherParticle

	(aParticle position = anotherParticle position)
		ifTrue: [ PhysicsModelError signal: 	'Particles can not be in the same position when interacting to each other.' ]