asserting
assertSingleParticleIn: universeObservation observesTheSameAs: expectedParticleObservation

	self
		assertSingleParticleIn: universeObservation
		has: expectedParticleObservation particleState 
		and: expectedParticleObservation color