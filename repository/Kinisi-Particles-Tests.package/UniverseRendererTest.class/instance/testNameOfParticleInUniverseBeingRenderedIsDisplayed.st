test
testNameOfParticleInUniverseBeingRenderedIsDisplayed

	| particle |
	particle := universeWorkbench newParticle.
	particle particleName: 'ParticleABCDE'.

	self assertNoErrorIsRaisedWhenRendering: universeWorkbench scenario