scenario
initialParticleState

	^resource
		particleNamed: 'ParticleA'
		with: resource oneKilogram
		in: resource nullPosition
		withVelocity: (resource velocityVectorWithXComponentOnlyWithAmount: 0.5)
		withAcceleration: resource nullAcceleration