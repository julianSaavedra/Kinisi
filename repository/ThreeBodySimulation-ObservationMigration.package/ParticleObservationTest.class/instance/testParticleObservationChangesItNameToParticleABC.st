tests
testParticleObservationChangesItNameToParticleABC

	| observation |
	observation := ParticleObservation forParticleNamed: 'ParticleName'.
	 
	observation := observation particleName: 'ParticleABC'.
	
	self assert: observation particleName equals: 'ParticleABC'