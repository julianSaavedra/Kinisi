utilities
physicalStateWithAcceleration: accelerationVector

	^self
		physicalStateForParticleNamed: 'ParticleA'
		with: self oneKilogram
		in: self nullPosition
		withAcceleration: accelerationVector