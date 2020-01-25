tests
testUniverseObservationWithParticleObservationsHasNoOneLeftAfterItIsReset

	| universeObservation |
	universeObservation := self universeObservationWithTwoParticles.
	self assert: universeObservation particles notEmpty.
	
	universeObservation reset.
	
	self assert: universeObservation particles isEmpty
