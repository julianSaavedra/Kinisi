asserting
assert: aPhysicalState isNotTheSameAs: anotherPhysicalState

	aPhysicalState = anotherPhysicalState
		ifTrue: [ PhysicsModelError
				signal: 'Interactions are not possible between the same particle.' ]