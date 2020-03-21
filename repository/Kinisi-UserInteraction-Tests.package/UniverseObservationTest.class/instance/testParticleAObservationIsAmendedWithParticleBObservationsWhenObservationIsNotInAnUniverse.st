test - particle observation
testParticleAObservationIsAmendedWithParticleBObservationsWhenObservationIsNotInAnUniverse

	| particleObservation |
	particleObservation := self particleAObservation.
	self assert: particleObservation particleState equals: self particleA.
	self assert: particleObservation color equals: self particleAColor.
	
	self populateParticleBObservationsIn: particleObservation.
		
	self assert: particleObservation particleState equals: self particleB.
	self assert: particleObservation color equals: self particleBColor.
