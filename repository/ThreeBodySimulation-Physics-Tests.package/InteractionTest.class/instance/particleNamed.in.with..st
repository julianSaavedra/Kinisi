test support
particleNamed: name in: position with: mass

	| particleState |
	particleState := PhysicalState
		withMass: mass
		position: position
		velocity: testResource nullVelocity
		andAcceleration: testResource nullAcceleration.

	^Particle named: name with: particleState