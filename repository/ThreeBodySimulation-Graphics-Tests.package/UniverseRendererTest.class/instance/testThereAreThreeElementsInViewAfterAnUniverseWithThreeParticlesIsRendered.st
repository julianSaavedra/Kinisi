test
testThereAreThreeElementsInViewAfterAnUniverseWithThreeParticlesIsRendered

	| universeDraft renderer |
	universeDraft := UniverseObservation new.
	universeDraft newParticleObservationDraft save.
	universeDraft newParticleObservationDraft save.
	universeDraft newParticleObservationDraft save.
	self assert: universeDraft particleObservations size equals: 3.
	renderer := UniverseRenderer basedOn: universeDraft and: self gridConfigurationWithGridSizeTenAndHalfMeterScale.

	renderer drawIn: view basedOn: universeDraft.

	self assert: view elements size equals: 3