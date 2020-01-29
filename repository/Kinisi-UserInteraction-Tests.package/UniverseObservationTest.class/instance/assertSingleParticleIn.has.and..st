asserting
assertSingleParticleIn: universeObservation has: expectedParticleState and: expectedColor 

	self assert: universeObservation particles size equals: 1.
	self
		assert: universeObservation particles first
		has: expectedParticleState
		and: expectedColor