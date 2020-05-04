example
exampleMonitoringControlPanel

	| monitoring |
	monitoring := MonitoringProcess
		reading: self naturalNumberProvider
		for: self transcriptMonitor
		every: 1 asSeconds.

	(MonitoringControlPanelPresenter on: monitoring) openWithSpec.
	monitoring inspect