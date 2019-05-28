asserting
assert: physicalState isNotIncludedWithin: causingParticlesPhysicalStates

	causingParticlesPhysicalStates
		detect: [:causingParticlePhysicalState | causingParticlePhysicalState = physicalState ]
		ifFound: [ PhysicsModelError 	signal: 'Net force should not be calculated within same particle' ]