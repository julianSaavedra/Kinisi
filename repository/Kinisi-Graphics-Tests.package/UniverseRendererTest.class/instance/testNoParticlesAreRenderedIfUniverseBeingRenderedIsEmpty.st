test
testNoParticlesAreRenderedIfUniverseBeingRenderedIsEmpty

	| universeDraft renderer |
	universeDraft := UniverseObservation new.
	self assert: universeDraft particles isEmpty.
	renderer := UniverseRenderer basedOn: universeDraft and: self gridConfigurationWithGridSizeTenAndHalfMeterScale.

	renderer drawIn: view basedOn: universeDraft.

	self assert: view elements isEmpty