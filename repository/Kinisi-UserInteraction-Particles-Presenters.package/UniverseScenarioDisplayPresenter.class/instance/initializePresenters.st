accessing model
initializePresenters

	display := self instantiate: SpRoassalPresenter.
	display script: [:view | self drawOn: view ]