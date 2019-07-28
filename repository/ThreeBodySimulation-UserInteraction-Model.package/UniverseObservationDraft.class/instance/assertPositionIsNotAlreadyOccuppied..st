private
assertPositionIsNotAlreadyOccuppied: aPosition

	self
		assertNoneSatisfy: [:particleDraft | particleDraft position = aPosition ]
		ifFailsSignal: 'Position is already occuppied in current Universe Observation draft'