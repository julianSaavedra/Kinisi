test
testRemovedParticleUpdateFails

	| particle |
	particle := workbench newParticle.
	particle removeYourselfFromUniverse.
	
	self particleAUpdateActions do: [:updateAction |
		self
			should: [ updateAction value: particle ]
			raise: UserInterfaceError
			whoseDescriptionIncludes: 'Particle is no longer valid' ]