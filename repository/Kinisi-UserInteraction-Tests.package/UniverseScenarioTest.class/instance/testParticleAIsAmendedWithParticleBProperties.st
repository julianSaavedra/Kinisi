test
testParticleAIsAmendedWithParticleBProperties

	| particle |
	particle := workbench newParticle.
	self populateParticleAObservationsIn: particle.
	self assert: particle particleState equals: self particleA.
	self assert: particle color equals: self particleAColor.
	
	self populateParticleBObservationsIn: particle.
		
	self assert: particle particleState equals: self particleB.
	self assert: particle color equals: self particleBColor