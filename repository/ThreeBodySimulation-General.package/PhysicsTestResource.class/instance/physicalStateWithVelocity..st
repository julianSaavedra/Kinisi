as yet unclassified
physicalStateWithVelocity: velocityVector

	^self
		physicalStateForParticleNamed: 'ParticleA'
		with: self oneKilogram
		in: self nullPosition
		withVelocity: velocityVector
		withAcceleration: self nullAcceleration