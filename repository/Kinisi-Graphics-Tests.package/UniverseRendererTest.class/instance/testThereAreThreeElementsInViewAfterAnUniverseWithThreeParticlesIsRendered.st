test
testThereAreThreeElementsInViewAfterAnUniverseWithThreeParticlesIsRendered

	| universeDraft renderer |
	universeDraft := UniverseObservation new.
	universeDraft newParticleObservation save.
	universeDraft newParticleObservation save.
	universeDraft newParticleObservation save.
	self assert: universeDraft particles size equals: 3.
	renderer := UniverseRenderer basedOn: universeDraft and: self gridConfigurationWithGridSizeTenAndHalfMeterScale.

	renderer drawIn: view basedOn: universeDraft.

	self assert: view elements size equals: 3