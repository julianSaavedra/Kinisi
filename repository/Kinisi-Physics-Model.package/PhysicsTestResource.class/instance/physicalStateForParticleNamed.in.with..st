utilities
physicalStateForParticleNamed: name in: position with: velocity

	^self
		particleNamed: name
		with: self oneKilogram
		in: position
		withVelocity: velocity
		withAcceleration: self nullAcceleration