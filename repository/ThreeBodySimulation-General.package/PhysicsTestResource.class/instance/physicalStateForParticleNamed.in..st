utilities
physicalStateForParticleNamed: particleName in: position

	^self
		physicalStateForParticleNamed: particleName
		with: self oneKilogram
		in: position