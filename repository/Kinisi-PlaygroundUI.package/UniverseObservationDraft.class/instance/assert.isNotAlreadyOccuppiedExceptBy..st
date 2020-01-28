validation
assert: position isNotAlreadyOccuppiedExceptBy: aParticleDraft

	self
		assertNoneSatisfy: [:particleDraft | particleDraft position = position ]
		except: aParticleDraft
		ifFailsSignal: 'Position is already occuppied in current Universe Observation draft'