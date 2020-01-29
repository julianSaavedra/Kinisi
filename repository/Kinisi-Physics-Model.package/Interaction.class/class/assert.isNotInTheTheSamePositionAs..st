asserting
assert: aPhysicalState isNotInTheTheSamePositionAs: anotherPhysicalState

	(aPhysicalState position = anotherPhysicalState position)
		ifTrue: [ PhysicsModelError signal: 	'Particles can not be in the same position when interacting to each other.' ]