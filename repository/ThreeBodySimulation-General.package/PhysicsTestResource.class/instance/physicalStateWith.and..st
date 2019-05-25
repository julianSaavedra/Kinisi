utilities
physicalStateWith: position and: mass
	
	^PhysicalState
		withMass: mass
		position: position
		velocity: self nullVelocity
		andAcceleration: self nullAcceleration