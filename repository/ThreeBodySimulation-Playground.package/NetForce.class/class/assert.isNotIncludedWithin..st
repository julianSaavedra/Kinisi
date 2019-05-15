asserting
assert: aParticle isNotIncludedWithin: causingParticles

	causingParticles
		detect: [:causingParticle | causingParticle = aParticle ]
		ifFound: [ PhysicsModelError 	signal: 'Net force should not be calculated within same particle' ]