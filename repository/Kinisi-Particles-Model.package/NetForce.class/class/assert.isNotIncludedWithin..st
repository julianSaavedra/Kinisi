asserting
assert: physicalState isNotIncludedWithin: causingParticlesPhysicalStates

	(causingParticlesPhysicalStates includes: physicalState)
		ifTrue: [ PhysicsModelError 	signal: 'Net force should not be calculated within same particle' ]