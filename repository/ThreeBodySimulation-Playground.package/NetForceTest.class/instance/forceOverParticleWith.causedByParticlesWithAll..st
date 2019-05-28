support
forceOverParticleWith: aPhysicalState causedByParticlesWithAll: forceCausingParticlesPhysicalStates

	^forceCausingParticlesPhysicalStates sum: [:forceCausingParticlePhysicalState |
		self
			forceOverParticleWith: aPhysicalState
			causedByParticleWith: forceCausingParticlePhysicalState ]