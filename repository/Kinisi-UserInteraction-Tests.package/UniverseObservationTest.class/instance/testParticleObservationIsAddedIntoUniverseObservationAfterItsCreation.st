tests
testParticleObservationIsAddedIntoUniverseObservationAfterItsCreation

	| universeObservation particleObservation |
	universeObservation := UniverseObservation new.
	
	particleObservation := universeObservation newParticleObservation.

	self assert: (universeObservation particles includes: particleObservation)