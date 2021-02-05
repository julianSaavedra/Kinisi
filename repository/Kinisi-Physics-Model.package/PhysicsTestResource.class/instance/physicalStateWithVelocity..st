utilities
physicalStateWithVelocity: velocityVector

	^self
		particleNamed: 'ParticleA'
		with: self oneKilogram
		in: self nullPosition
		withVelocity: velocityVector
		withAcceleration: self nullAcceleration