support
performExperimentAndWaitUntilResultIsAvailable: lab

	| previousExperimentsAmount |
	previousExperimentsAmount := lab experiments size.
	[ lab performExperiment.
	[ lab experiments size > previousExperimentsAmount ] whileFalse ]
		valueWithin: (Duration seconds: 2)
		onTimeout: [ self fail ]