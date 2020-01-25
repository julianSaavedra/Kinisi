tests
testSavingParticleObservationAfterItWasRemovedFails

	| universeObservation particleObservation |
	universeObservation :=self universeObservationWithOneObservation.
	particleObservation := universeObservation particles first.
	
	particleObservation removeYourselfFromUniverse.
	
	self assert: universeObservation particles isEmpty.
	self
		should: [ particleObservation save ]
		raise: UserInterfaceError
		whoseDescriptionIncludes: 'Particle observation has been removed from universe'