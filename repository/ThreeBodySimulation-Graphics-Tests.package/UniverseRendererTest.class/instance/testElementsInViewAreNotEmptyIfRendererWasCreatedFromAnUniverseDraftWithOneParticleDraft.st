test
testElementsInViewAreNotEmptyIfRendererWasCreatedFromAnUniverseDraftWithOneParticleDraft

	| universeDraft renderer |
	universeDraft := UniverseObservationDraft new.
	universeDraft newParticleObservationDraft.
	self assert: universeDraft particleDrafts notEmpty.
	renderer := UniverseRenderer basedOn: universeDraft and: self gridConfigurationWithGridSizeTenAndHalfMeterScale.

	renderer drawIn: view basedOn: universeDraft.

	self assert: view elements notEmpty