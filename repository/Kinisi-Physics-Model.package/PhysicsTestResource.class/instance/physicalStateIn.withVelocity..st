utilities
physicalStateIn: positionVector withVelocity: velocityVector

	^self
		particleNamed: 'ParticleA'
		with: self oneKilogram
		in: positionVector
		withVelocity: velocityVector
		withAcceleration: self nullAcceleration