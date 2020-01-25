utilities
physicalStateForParticleNamed: aName with: mass in: position withAcceleration: acceleration

	^self
		particleNamed: aName
		with: mass
		in: position
		withVelocity: self nullVelocity
		withAcceleration: acceleration