utilities
physicalStateForParticleNamed: aName with: mass in: position

	^self
		physicalStateForParticleNamed: aName
		with: mass
		in: position
		withAcceleration: self nullAcceleration