accessing model
initializeObservationWorkbench

	| modelWorkbench interfaceOptions |
	observation := self
		instantiate: ObservationWorkbenchPresenter
		on: workbench observationWorkbench.
	observation definitionOptions: configuration interfaceOptions