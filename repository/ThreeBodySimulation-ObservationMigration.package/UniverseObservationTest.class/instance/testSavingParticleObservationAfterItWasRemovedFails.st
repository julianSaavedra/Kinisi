tests
testSavingParticleObservationAfterItWasRemovedFails

	| universeObservation particleObservation |
	universeObservation :=self universeObservationWithOneObservation.
	particleObservation := universeObservation particleObservations first.
	
	particleObservation removeYourselfFromUniverse.
	
	self assert: universeObservation particleObservations isEmpty.
	self
		should: [ particleObservation save ]
		raise: UserInterfaceError
		whoseDescriptionIncludes: 'Particle observation has been removed from universe'