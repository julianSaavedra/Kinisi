asserting
assertParticlePositionsAreUniqueIn: physicalStates

	self
		assertIn: physicalStates
		uniqueElementsGivenBy: [:physicalState | physicalState position]
		ifNotRaiseSignal: 'Two or more particles are in the same point'