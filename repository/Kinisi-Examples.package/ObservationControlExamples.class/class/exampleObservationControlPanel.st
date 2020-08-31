example
exampleObservationControlPanel

	| observation |
	observation := KinisiObservation
		on: self naturalNumberSource
		with: self numberInTranscriptInterface
		waiting: 1 asSeconds.

	(ObservationControlPanelPresenter on: observation) openWithSpec.
	observation inspect