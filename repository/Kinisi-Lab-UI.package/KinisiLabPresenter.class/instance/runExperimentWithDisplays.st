experiment
runExperimentWithDisplays

	| experiment |
	experiment := lab newExperiment.
	self openControlPanelFor: experiment.
	self openDisplaysFor: experiment.
	experiment run