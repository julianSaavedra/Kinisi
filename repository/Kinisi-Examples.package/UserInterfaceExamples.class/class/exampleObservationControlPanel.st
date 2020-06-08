example
exampleObservationControlPanel

	| observation |
	observation := KinisiObservation
		on: self naturalNumberSource
		with: self numberInTtranscriptInterface
		waiting: 1 asSeconds.

	(ObservationControlPanelPresenter on: observation) openWithSpec.
	observation inspect