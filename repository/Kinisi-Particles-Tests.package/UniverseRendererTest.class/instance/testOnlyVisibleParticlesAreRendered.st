test
testOnlyVisibleParticlesAreRendered

	| visiblesParticles invisibleParticle universe |
	visiblesParticles := OrderedCollection with: universeWorkbench newParticle with: universeWorkbench newParticle.
	visiblesParticles do: [:particle | particle makeYourselfVisible ].
	invisibleParticle := universeWorkbench newParticle.
	invisibleParticle makeYourselfInvisible.
	universe := universeWorkbench scenario.
	
	self assertNoErrorIsRaisedWhenRendering: universe.
	visiblesParticles do: [:particle |
			self assert: (canvas shapes anySatisfy: [:shape | shape model == particle ])].
	self assert: (canvas shapes noneSatisfy: [:shape | shape model == invisibleParticle ])