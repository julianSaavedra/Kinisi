validation
assert: aPosition IsNotAlreadyOccuppiedExceptBy: aParticleDraft

	self
		assertNoneSatisfy: [ :particleDraft | particleDraft position = aPosition ]
		except: aParticleDraft
		ifFailsSignal: 'Position is already occuppied in current Universe Observation draft'