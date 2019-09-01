test
testElementInViewHasAsModelTheParticleDraftOfTheRenderedUniverseDraft

	| universeDraft particleDraft renderer |
	universeDraft := UniverseObservationDraft new.
	particleDraft := universeDraft newParticleObservationDraft.
	renderer := UniverseRenderer basedOn: universeDraft and: self gridConfigurationWithGridSizeTenAndHalfMeterScale.

	renderer drawIn: view basedOn: universeDraft.

	self assert: view elements first model == particleDraft