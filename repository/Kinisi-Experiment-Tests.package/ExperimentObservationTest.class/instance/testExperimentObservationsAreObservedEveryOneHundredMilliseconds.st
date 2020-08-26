tests
testExperimentObservationsAreObservedEveryOneHundredMilliseconds

	| oneHundredMilliSeconds interfaceDefinition |
	interfaceDefinition := self recordingInterfaceDefinitionNamed: 'ObservationsTimesRecorer'.
	oneHundredMilliSeconds := self oneHundredMilliSeconds.
	observationWorkbench
		add: interfaceDefinition;
		period: oneHundredMilliSeconds.

	lab runExperiment.
	self waitRecordingIsFinishedFor: interfaceDefinition.
	
	self
		assertTimeBetweenObservationFor: interfaceDefinition
		isInAverage: oneHundredMilliSeconds
		with: 5