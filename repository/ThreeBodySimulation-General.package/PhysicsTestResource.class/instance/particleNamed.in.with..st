as yet unclassified
particleNamed: aName in: position with: mass
	
	| particleState |
	particleState := PhysicalState
		withMass: mass
		position: position
		velocity: self nullVelocity
		andAcceleration: self nullAcceleration.

	^Particle named: aName with: particleState