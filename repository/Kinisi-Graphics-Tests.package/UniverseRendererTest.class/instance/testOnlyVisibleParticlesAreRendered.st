test
testOnlyVisibleParticlesAreRendered

	| universe renderer visiblesParticles invisibleParticle |
	universe := UniverseScenario new.
	visiblesParticles := OrderedCollection with: universe newParticleObservation with: universe newParticleObservation.
	visiblesParticles do: [:particle | particle makeYourselfVisible ].
	invisibleParticle := universe newParticleObservation.
	invisibleParticle makeYourselfInvisible.
	renderer := UniverseRenderer basedOn: universe.

	renderer drawIn: canvas basedOn: universe.

	visiblesParticles do: [:particle |
			self assert: (canvas shapes anySatisfy: [:shape | shape model == particle ])].
	self assert: (canvas shapes noneSatisfy: [:shape | shape model == invisibleParticle ])