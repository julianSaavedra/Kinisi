asserting
assertSingleParticleIn: universeObservation has: expectedParticleState and: expectedColor 

	self assert: universeObservation particleObservations size equals: 1.
	self
		assert: universeObservation particleObservations first
		has: expectedParticleState
		and: expectedColor