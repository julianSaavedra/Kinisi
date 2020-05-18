test - monitoring settings
testMonitorSettingsHasANonEmptyCollectionOfPerformsStartProcessingAndFinishActionWhenSimulationIsRun

	| workbench monitor |
	workbench := CollatzConjectureUserWorkbench default.
	monitor := PluggableObservationInterface processWith: [].
	self assertEmpty: workbench monitoringSettings monitors.
	
	(CollatzConjectureMonitoringSettingsModifier add: monitor) modify: workbench.
	
	self denyEmpty: workbench monitoringSettings monitors