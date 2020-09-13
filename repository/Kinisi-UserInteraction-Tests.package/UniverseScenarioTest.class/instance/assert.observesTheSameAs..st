asserting
assert: particleObservation observesTheSameAs: expectedParticleObservation

	self assert: particleObservation particleName equals: expectedParticleObservation particleName.
	self assert: particleObservation mass equals: expectedParticleObservation mass.
	self assert: particleObservation position equals: expectedParticleObservation position.
	self assert: particleObservation velocity equals: expectedParticleObservation velocity.
	self assert: particleObservation acceleration equals: expectedParticleObservation acceleration.
	self assert: particleObservation color equals: expectedParticleObservation color