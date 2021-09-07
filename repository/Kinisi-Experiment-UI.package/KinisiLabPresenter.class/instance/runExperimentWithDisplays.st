experiment
runExperimentWithDisplays

	| experiment |
	experiment := lab newExperiment.
	self openDisplaysFor: experiment.
	experiment run