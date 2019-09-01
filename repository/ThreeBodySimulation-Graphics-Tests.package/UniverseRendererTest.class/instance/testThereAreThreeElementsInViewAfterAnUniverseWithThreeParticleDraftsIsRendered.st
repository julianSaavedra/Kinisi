test
testThereAreThreeElementsInViewAfterAnUniverseWithThreeParticleDraftsIsRendered

	| universeDraft renderer |
	universeDraft := UniverseObservationDraft new.
	universeDraft
		newParticleObservationDraft;
		newParticleObservationDraft;
		newParticleObservationDraft.
	self assert: universeDraft particleDrafts size equals: 3.
	renderer := UniverseRenderer basedOn: universeDraft and: self gridConfigurationWithGridSizeTenAndHalfMeterScale.

	renderer drawIn: view basedOn: universeDraft.

	self assert: view elements size equals: 3