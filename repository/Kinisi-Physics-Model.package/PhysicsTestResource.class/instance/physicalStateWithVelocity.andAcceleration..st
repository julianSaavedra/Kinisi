utilities
physicalStateWithVelocity: velocityVector andAcceleration: accelerationVector


	^self
		particleNamed: 'ParticleA'
		with: self oneKilogram
		in: self nullPosition
		withVelocity: velocityVector
		withAcceleration: accelerationVector