asserting
assertParticlePositionsAreUniqueIn: particles

	self
		assertIn: particles
		uniqueElementsGivenBy: [:particle | particle position]
		ifNotRaiseSignal: 'Two or more particles are in the same point'