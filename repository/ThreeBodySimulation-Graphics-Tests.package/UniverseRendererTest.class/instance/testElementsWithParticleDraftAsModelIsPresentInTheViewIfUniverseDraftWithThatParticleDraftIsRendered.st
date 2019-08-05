test - review
testElementsWithParticleDraftAsModelIsPresentInTheViewIfUniverseDraftWithThatParticleDraftIsRendered

	| view universeDraft particleDraft renderer |
	view := RTView new.
	universeDraft := UniverseObservationDraft new.
	particleDraft := universeDraft newParticleObservationDraft.

	renderer := UniverseRenderer basedOn: universeDraft and: self gridConfiguration.

	renderer drawIn: view basedOn: universeDraft.

	self assert: view elements first model == particleDraft