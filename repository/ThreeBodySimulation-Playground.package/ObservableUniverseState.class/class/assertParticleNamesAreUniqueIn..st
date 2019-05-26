asserting
assertParticleNamesAreUniqueIn: physicalStates

	self
		assertIn: physicalStates
		uniqueElementsGivenBy: [:physicalState | physicalState particleName ]
		ifNotRaiseSignal: 'Two or more particles are named equally'