tests
testExperimentObservationsAreProcessedEveryOneHundredMilliseconds

	| oneHundredMilliSeconds interfaceDefinition |
	interfaceDefinition := self recordingInterfaceDefinitionNamed: 'ObservationsTimesRecorer'.
	oneHundredMilliSeconds := self oneHundredMilliSeconds.
	observationWorkbench
		add: interfaceDefinition;
		period: oneHundredMilliSeconds.

	lab newExperiment run.
	self waitRecordingIsFinishedForInterfaceBasedOn: interfaceDefinition.
	
	self
		assertTimeBetweenObservationFor: interfaceDefinition
		isInAverage: oneHundredMilliSeconds
		with: 5