asserting
assert: particleObservation isFor: expectedParticleState andIsObserved: expectedColor

	self
		assert: particleObservation particleState
		equals: expectedParticleState.
	self
		assert: particleObservation color
		equals: expectedColor