test - review
testUniverseRendererDoesNotAddElementsToViewIfCreatedFromAnEmptyUniverseDraft

	| view universeDraft renderer |
	view := RTView new.
	universeDraft := UniverseObservationDraft new.
	self assert: universeDraft particleDrafts isEmpty.

	renderer := UniverseRenderer basedOn: universeDraft and: self gridConfiguration.

	renderer drawIn: view basedOn: universeDraft.

	self assert: view elements isEmpty