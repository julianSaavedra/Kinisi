test
testRemovingParticleAgainAfterItWasRemovedDoesNotFail

	| particleToBeRemoved |
	particleToBeRemoved := workbench newParticle.
	
	particleToBeRemoved removeYourselfFromUniverse.
	
	self
		shouldnt: [ particleToBeRemoved removeYourselfFromUniverse ]
		raise: UserInterfaceError