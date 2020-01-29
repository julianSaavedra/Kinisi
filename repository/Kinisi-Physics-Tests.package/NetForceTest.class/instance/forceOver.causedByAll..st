support
forceOver: aPhysicalState causedByAll: forceCausingParticlesPhysicalStates

	^forceCausingParticlesPhysicalStates sum: [:forceCausingParticlePhysicalState |
		self
			forceOver: aPhysicalState
			causedBy: forceCausingParticlePhysicalState ]