test
testUniverseRendererDoesNotAddElementsToViewIfCreatedFromAnEmptyUniverseDraft

	| universeDraft renderer |
	universeDraft := UniverseObservationDraft new.
	self assert: universeDraft particleDrafts isEmpty.
	renderer := UniverseRenderer basedOn: universeDraft and: self gridConfigurationWithGridSizeTenAndHalfMeterScale.

	renderer drawIn: view basedOn: universeDraft.

	self assert: view elements isEmpty