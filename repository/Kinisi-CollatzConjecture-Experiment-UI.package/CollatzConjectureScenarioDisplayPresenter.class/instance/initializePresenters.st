initialization
initializePresenters

	display := self instantiate: SpRoassalPresenter.
	display script: [:canvas | self drawOn: canvas ]