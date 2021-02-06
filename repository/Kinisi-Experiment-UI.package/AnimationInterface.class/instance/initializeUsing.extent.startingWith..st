initialization
initializeUsing: aRenderer extent: anExtent startingWith: initialObservation

	renderer := aRenderer.
	extent := anExtent.
	currentObservation := initialObservation.
	canvas := SpRoassalPresenter new.
	canvas script: [:aCanvas | renderer drawIn: aCanvas basedOn: currentObservation ]