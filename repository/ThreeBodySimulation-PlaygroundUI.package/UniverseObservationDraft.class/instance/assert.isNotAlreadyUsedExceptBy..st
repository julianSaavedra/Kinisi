validation
assert: name isNotAlreadyUsedExceptBy: aParticleDraft

	self
		assertNoneSatisfy: [:particleDraft | particleDraft particleName = name ]
		except: aParticleDraft
		ifFailsSignal: 'Particle name is already used in current Universe Observation draft'