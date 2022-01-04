test
testOnlyVisibleParticlesAreRendered

	| visiblesParticles invisibleParticle universe renderer |
	visiblesParticles := OrderedCollection with: universeWorkbench newParticle with: universeWorkbench newParticle.
	visiblesParticles do: [:particle | particle makeYourselfVisible ].
	invisibleParticle := universeWorkbench newParticle.
	invisibleParticle makeYourselfInvisible.
	universe := universeWorkbench scenario.
	renderer := UniverseRenderer basedOn: universe.

	renderer drawIn: canvas basedOn: universe.

	visiblesParticles do: [:particle |
			self assert: (canvas shapes anySatisfy: [:shape | shape model == particle ])].
	self assert: (canvas shapes noneSatisfy: [:shape | shape model == invisibleParticle ])