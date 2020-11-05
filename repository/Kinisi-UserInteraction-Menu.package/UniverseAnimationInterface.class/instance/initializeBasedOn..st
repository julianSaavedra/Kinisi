as yet unclassified
initializeBasedOn: scenario

	canvas := SpRoassalPresenter new.
	currentObservation := scenario state.
	renderer := UniverseRenderer basedOn: scenario.
	canvas script: [:aCanvas | renderer drawIn: aCanvas basedOn: currentObservation ]