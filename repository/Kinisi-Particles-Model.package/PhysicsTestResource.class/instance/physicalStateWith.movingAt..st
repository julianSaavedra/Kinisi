utilities
physicalStateWith: mass movingAt: velocityVector

	^self
		particleNamed: 'ParticleA'
		with: mass
		in: self nullPosition
		withVelocity: velocityVector
		withAcceleration: self nullAcceleration