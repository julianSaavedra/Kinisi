initialization
initializeDisplay

	display := self instantiate: SpRoassalPresenter.
	display script: [:view | self drawOn: view ]