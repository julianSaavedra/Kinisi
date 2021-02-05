test
testRemovingRemovedParticleDirecltyFromUniverseFails

	| particleToBeRemoved |
	particleToBeRemoved := workbench newParticle.
	particleToBeRemoved removeYourselfFromUniverse.
		
	self
		should: [ workbench remove: particleToBeRemoved ]
		raise: UserInterfaceError
		whoseDescriptionIncludes: 'Particle is not included in this universe'