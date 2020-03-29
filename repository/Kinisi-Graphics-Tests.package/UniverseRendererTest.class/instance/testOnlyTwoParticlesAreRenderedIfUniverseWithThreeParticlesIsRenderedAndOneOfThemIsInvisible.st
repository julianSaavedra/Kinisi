test
testOnlyTwoParticlesAreRenderedIfUniverseWithThreeParticlesIsRenderedAndOneOfThemIsInvisible

	| universe renderer |
	universe := UniverseObservation new.
	universe
		newParticleObservation;
		newParticleObservation;
		newParticleObservation.
	universe particles last makeYourselfInvisible.
	renderer := UniverseRenderer basedOn: universe.

	renderer drawIn: view basedOn: universe.

	self assert: view elements size equals: 2