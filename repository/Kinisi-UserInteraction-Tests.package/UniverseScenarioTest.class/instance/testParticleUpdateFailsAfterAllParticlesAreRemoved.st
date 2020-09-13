test
testParticleUpdateFailsAfterAllParticlesAreRemoved

	| observationToBeRemoved |
	observationToBeRemoved := workbench newParticle.
	workbench removeAllParticles.
	
	self particleAUpdateActions do: [:updateAction |
		self
			should: [ updateAction value: observationToBeRemoved ]
			raise: UserInterfaceError
			whoseDescriptionIncludes: 'Particle is no longer valid' ]