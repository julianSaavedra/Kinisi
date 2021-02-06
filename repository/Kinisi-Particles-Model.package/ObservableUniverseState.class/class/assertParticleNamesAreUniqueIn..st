asserting
assertParticleNamesAreUniqueIn: particle

	self
		assertIn: particle
		uniqueElementsGivenBy: [:aParticle | aParticle particleName ]
		ifNotRaiseSignal: 'Two or more particles are named equally'