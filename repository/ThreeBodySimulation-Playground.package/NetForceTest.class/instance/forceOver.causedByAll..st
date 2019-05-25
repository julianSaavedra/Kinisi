support
forceOver: aParticle causedByAll: forceCausingParticles

	^ forceCausingParticles
		sum:
			[ :forceCausingParticle | self forceOver: aParticle causedBy: forceCausingParticle ]