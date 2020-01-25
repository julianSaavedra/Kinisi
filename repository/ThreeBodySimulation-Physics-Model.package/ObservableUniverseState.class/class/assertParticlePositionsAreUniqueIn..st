asserting
assertParticlePositionsAreUniqueIn: particleStates

	self
		assertIn: particleStates
		uniqueElementsGivenBy: [:physicalState | physicalState position]
		ifNotRaiseSignal: 'Two or more particles are in the same point'