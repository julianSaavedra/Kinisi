test - review
testElementInViewHasBlueColorAfterUniverseDraftWithBlueDraftIsRendered

	| view universeDraft renderer draftColor |
	view := RTView new.
	universeDraft := UniverseObservationDraft new.
	draftColor := Color blue.
	universeDraft newParticleObservationDraft color: draftColor.

	renderer := UniverseRenderer basedOn: universeDraft and: self gridConfiguration.

	renderer drawIn: view basedOn: universeDraft.

	self assert: view elements size equals: 1.
	self assert: view elements first color equals: draftColor