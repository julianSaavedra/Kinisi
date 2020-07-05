support
performExperimentAndWaitUntilNewResultIsAvailable: lab

	| previousExperimentsAmount |
	previousExperimentsAmount := lab experiments size.
	lab performExperiment.
	self waitWhile: [ lab experiments size = previousExperimentsAmount ]