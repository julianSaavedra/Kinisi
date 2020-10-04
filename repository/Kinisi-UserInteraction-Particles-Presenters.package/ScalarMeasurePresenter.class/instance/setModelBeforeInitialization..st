initialization
setModelBeforeInitialization: measurePresenterDescription

	super setModelBeforeInitialization: measurePresenterDescription.
	label := measurePresenterDescription label.
	measure := measurePresenterDescription model.
	unitOptions := measurePresenterDescription unitOptions.
	measureChangeBlock := measurePresenterDescription modelChangingBlock