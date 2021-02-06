utilities
physicalStateWith: mass in: position

	^self
		physicalStateForParticleNamed: 'ParticleA'
		with: mass
		in: position