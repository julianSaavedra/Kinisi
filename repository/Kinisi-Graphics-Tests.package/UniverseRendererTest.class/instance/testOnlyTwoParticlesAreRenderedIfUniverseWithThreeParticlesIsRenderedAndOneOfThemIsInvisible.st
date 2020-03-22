test
testOnlyTwoParticlesAreRenderedIfUniverseWithThreeParticlesIsRenderedAndOneOfThemIsInvisible

	| universe renderer |
	universe := UniverseObservation new.
	universe newParticleObservation; newParticleObservation; newParticleObservation.
	self assert: universe particles size equals: 3.
	universe particles last makeYourselfInvisible. 
	renderer := UniverseRenderer basedOn: universe and: self gridConfigurationWithGridSizeTenAndHalfMeterScale.

	renderer drawIn: view basedOn: universe.

	self assert: view elements size equals: 2