validation
assertNameIsNotAlreadyUsed: aName

	self
		assertNoneSatisfy: [ :particleDraft | particleDraft particleName = aName ]
		except: 'Particle name is already used in current Universe Observation draft'
		ifFailsSignal: nil