tests
testParticleAObservationIsAmendedWithParticleBObservations

	| particleObservation |
	particleObservation := self universeObservationWithParticleAOnly particles first.
	self assert: particleObservation particleState equals: self particleA.
	self assert: particleObservation color equals: self particleAColor.
	
	self populateParticleBObservationsIn: particleObservation.
		
	self assert: particleObservation particleState equals: self particleB.
	self assert: particleObservation color equals: self particleBColor