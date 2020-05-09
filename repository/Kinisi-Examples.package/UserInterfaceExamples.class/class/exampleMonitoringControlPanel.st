example
exampleMonitoringControlPanel

	| monitoring |
	monitoring := KinisiMonitor
		on: self naturalNumberProvider
		with: self transcriptMonitor
		waiting: 1 asSeconds.

	(MonitoringControlPanelPresenter on: monitoring) openWithSpec.
	monitoring inspect