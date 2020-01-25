asserting
assertParticleNamesAreUniqueIn: particleStates

	self
		assertIn: particleStates
		uniqueElementsGivenBy: [:physicalState | physicalState particleName ]
		ifNotRaiseSignal: 'Two or more particles are named equally'