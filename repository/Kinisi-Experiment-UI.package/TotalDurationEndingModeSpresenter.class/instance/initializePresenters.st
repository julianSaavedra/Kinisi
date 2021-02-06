initialization
initializePresenters

	totalDuration := self
		instantiate: ScalarMeasurePresenter
		on: endingMode totalDuration.
	totalDuration
		label: 'Total Duration';
		changeModelWith: [:newDuration | self updateWorkbenchWith: newDuration ]