asserting
assert: particleObservation has: expectedParticleState and: expectedColor

	self
		assert: particleObservation particleState
		equals: expectedParticleState.
	self
		assert: particleObservation color
		equals: expectedColor