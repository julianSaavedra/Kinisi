initialization
initializeObservationWorkbench

	self
		addPageFor: (ObservationWorkbenchPresenter on: configuration)
		named: 'Observation'
		with: #haloView