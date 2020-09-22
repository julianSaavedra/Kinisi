initialization
initializeBasedOn: scenario

	canvas := SpRoassalPresenter new.
	currentObservation := scenario state.
	renderer := CollatzConjectureStateRenderer basedOn: scenario.
	canvas script: [:aCanvas | renderer draw: currentObservation on: aCanvas ]