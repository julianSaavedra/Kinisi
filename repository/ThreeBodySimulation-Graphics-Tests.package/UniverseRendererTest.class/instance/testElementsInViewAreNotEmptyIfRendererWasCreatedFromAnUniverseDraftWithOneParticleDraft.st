test - review
testElementsInViewAreNotEmptyIfRendererWasCreatedFromAnUniverseDraftWithOneParticleDraft

	| view universeDraft renderer |
	view := RTView new.
	universeDraft := UniverseObservationDraft new.
	universeDraft newParticleObservationDraft.
	self assert: universeDraft particleDrafts notEmpty.

	renderer := UniverseRenderer basedOn: universeDraft and: self gridConfiguration.

	renderer drawIn: view basedOn: universeDraft.

	self assert: view elements notEmpty