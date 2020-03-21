tests
testUniverseObservationIsEmptyAfterAllParticlesAreRemoved

	| universeObservation |
	universeObservation := self universeObservationWithTwoParticles.
	self assert: universeObservation particles notEmpty.
	
	universeObservation removeAllParticles.
	
	self assert: universeObservation particles isEmpty
