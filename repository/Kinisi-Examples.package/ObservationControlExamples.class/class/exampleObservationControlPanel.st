example
exampleObservationControlPanel

	| observation |
	observation := KinisiObservation
		on: self naturalNumberSource
		with: self numberInTranscriptInterface
		waiting: 1 asSeconds.

	(ExperimentControlPanelPresenter on: observation) openWithSpec.
	observation inspect