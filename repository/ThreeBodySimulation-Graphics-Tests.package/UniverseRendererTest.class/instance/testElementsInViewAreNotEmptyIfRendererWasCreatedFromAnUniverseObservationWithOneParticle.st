test
testElementsInViewAreNotEmptyIfRendererWasCreatedFromAnUniverseObservationWithOneParticle

	| universeDraft renderer |
	universeDraft := UniverseObservation new.
	universeDraft newParticleObservationDraft save.
	self assert: universeDraft particles notEmpty.
	renderer := UniverseRenderer basedOn: universeDraft and: self gridConfigurationWithGridSizeTenAndHalfMeterScale.

	renderer drawIn: view basedOn: universeDraft.

	self assert: view elements notEmpty