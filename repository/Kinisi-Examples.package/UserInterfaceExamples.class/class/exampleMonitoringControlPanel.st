example
exampleMonitoringControlPanel

	| monitoring |
	monitoring := KinisiObservation
		on: self naturalNumberProvider
		with: self transcriptMonitor
		waiting: 1 asSeconds.

	(MonitoringControlPanelPresenter on: monitoring) openWithSpec.
	monitoring inspect