test
testAllParticlesInUniverseAreRendered

	| universe renderer |
	universe := UniverseScenario new.
	universe
		newParticleObservation;
		newParticleObservation;
		newParticleObservation.
	self denyEmpty: universe particles.
	renderer := UniverseRenderer basedOn: universe.

	renderer drawIn: canvas basedOn: universe.

	universe particles do: [:particle |
			self assert: (canvas shapes anySatisfy: [:shape | shape model == particle ])]