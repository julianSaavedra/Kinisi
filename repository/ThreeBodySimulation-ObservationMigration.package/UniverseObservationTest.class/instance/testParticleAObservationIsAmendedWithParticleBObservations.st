tests
testParticleAObservationIsAmendedWithParticleBObservations

	| universeObservation particleObservation |
	universeObservation := self universeObservationWithParticleAOnly.
	self
		assertSingleParticleIn: universeObservation
		has: self particleAState
		and: self particleAColor.
	
	particleObservation := universeObservation particleObservations first.
	self particleBUpdateActions do: [:action |
		action value: particleObservation.
		self
			assertSingleParticleIn: universeObservation
			observesTheSameAs: particleObservation ].
		
	self
		assertSingleParticleIn: universeObservation
		has: self particleBState
		and: self particleBColor.
