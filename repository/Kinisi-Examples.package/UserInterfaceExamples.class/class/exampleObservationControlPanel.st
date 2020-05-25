example
exampleObservationControlPanel

	| observation |
	observation := KinisiObservation
		on: self naturalNumberProvider
		with: self transcriptInterface
		waiting: 1 asSeconds.

	(ObservationControlPanelPresenter on: observation) openWithSpec.
	observation inspect