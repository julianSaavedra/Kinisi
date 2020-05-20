example
exampleObservationControlPanel

	| monitoring |
	monitoring := KinisiObservation
		on: self naturalNumberProvider
		with: self transcriptInterface
		waiting: 1 asSeconds.

	(ObservationControlPanelPresenter on: monitoring) openWithSpec.
	monitoring inspect