validation
assertNameIsNotAlreadyUsed: aName

	self
		assertNoneSatisfy: [:particleDraft | particleDraft particleName = aName ]
		ifFailsSignal: 'Particle name is already used in current Universe Observation draft'