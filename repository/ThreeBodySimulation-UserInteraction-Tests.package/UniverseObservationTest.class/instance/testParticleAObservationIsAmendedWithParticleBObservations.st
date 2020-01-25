tests
testParticleAObservationIsAmendedWithParticleBObservations

	| universeObservation particleObservation |
	universeObservation := self universeObservationWithParticleAOnly.
	self
		assertSingleParticleIn: universeObservation
		has: self particleA
		and: self particleAColor.
	
	particleObservation := universeObservation particles first.
	self particleBUpdateActions do: [:action |
		action value: particleObservation.
		self
			assertSingleParticleIn: universeObservation
			observesTheSameAs: particleObservation ].
		
	self
		assertSingleParticleIn: universeObservation
		has: self particleB
		and: self particleBColor.
