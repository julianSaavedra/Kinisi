utilities
physicalStateForParticleNamed: aName with: mass in: position withAcceleration: acceleration

	^self
		physicalStateForParticleNamed: aName
		with: mass
		in: position
		withVelocity: self nullVelocity
		withAcceleration: acceleration