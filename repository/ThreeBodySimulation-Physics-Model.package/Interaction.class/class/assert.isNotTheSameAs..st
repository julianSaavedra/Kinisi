asserting
assert: aParticle isNotTheSameAs: anotherParticle

	aParticle = anotherParticle
		ifTrue: [ PhysicsModelError
				signal: 'Interactions are not possible between the same particle.' ]