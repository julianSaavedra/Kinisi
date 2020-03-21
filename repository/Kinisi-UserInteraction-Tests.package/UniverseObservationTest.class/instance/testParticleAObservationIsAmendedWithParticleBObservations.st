test - particle observation
testParticleAObservationIsAmendedWithParticleBObservations

	| universeObservation particleObservation |
	universeObservation := self universeObservationWithParticleAOnly.
	self
		assertSingleParticleIn: universeObservation
		isFor: self particleA
		andIsObserved: self particleAColor.
	
	particleObservation := universeObservation particles first.
	self particleBUpdateActions do: [:action |
		action value: particleObservation.
		self
			assertSingleParticleIn: universeObservation
			observesTheSameAs: particleObservation ].
		
	self
		assertSingleParticleIn: universeObservation
		isFor: self particleB
		andIsObserved: self particleBColor.
