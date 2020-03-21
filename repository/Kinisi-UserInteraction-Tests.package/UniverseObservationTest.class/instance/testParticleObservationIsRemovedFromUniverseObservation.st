tests
testParticleObservationIsRemovedFromUniverseObservation

	| universeObservation particleObservation |
	universeObservation := self universeObservationWithOneObservation.
	particleObservation := universeObservation particles first.
	
	universeObservation remove: particleObservation.

	self assert: universeObservation particles isEmpty