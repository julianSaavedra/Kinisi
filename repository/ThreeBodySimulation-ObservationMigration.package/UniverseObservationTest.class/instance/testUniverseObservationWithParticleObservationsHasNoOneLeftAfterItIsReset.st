tests
testUniverseObservationWithParticleObservationsHasNoOneLeftAfterItIsReset

	| universeObservation |
	universeObservation := self universeObservationWithTwoParticles.
	self assert: universeObservation particleObservations notEmpty.
	
	universeObservation reset.
	
	self assert: universeObservation particleObservations isEmpty
