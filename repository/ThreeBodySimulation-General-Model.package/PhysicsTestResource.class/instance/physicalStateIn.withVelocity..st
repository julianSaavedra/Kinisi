utilities
physicalStateIn: positionVector withVelocity: velocityVector

	^self
		physicalStateForParticleNamed: 'ParticleA'
		with: self oneKilogram
		in: positionVector
		withVelocity: velocityVector
		withAcceleration: self nullAcceleration