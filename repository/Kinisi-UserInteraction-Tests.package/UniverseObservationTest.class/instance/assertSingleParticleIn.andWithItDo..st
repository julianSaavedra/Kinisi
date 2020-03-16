asserting
assertSingleParticleIn: universeObservation andWithItDo: singleObservationBlock

	self assert: universeObservation particles size equals: 1.
	singleObservationBlock value: universeObservation particles first