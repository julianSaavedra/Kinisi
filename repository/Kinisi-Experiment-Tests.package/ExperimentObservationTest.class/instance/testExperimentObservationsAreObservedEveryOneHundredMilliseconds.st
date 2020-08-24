tests
testExperimentObservationsAreObservedEveryOneHundredMilliseconds

	| oneHundredMilliseconds interfaceDefinition |
	interfaceDefinition := self recordingInterfaceDefinitionNamed: 'ObservationsTimesRecorer'.
	oneHundredMilliseconds := Duration milliSeconds: 100.
	observationWorkbench
		add: interfaceDefinition;
		period: oneHundredMilliseconds.

	lab runExperiment.

	[ self waitRecordingIsFinishedFor: interfaceDefinition ]
		valueWithin: 2 seconds
		onTimeout: [ self fail ].
	self
		assertTimeBetweenObservationFor: interfaceDefinition
		isInAverage: oneHundredMilliseconds
		with: 5