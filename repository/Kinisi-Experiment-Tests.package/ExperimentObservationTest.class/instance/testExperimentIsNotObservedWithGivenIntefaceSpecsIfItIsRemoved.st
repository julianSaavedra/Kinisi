tests
testExperimentIsNotObservedWithGivenIntefaceSpecsIfItIsRemoved

	| interfaceDefinitionToBeUsed interfaceDefinitionToBeRemoved |
	interfaceDefinitionToBeUsed := self recordingInterfaceDefinitionNamed: 'ObservationsCollectorToBeUsed'.
	interfaceDefinitionToBeRemoved := self recordingInterfaceDefinitionNamed: 'ObservationsCollectorToBeRemoved'.

	observationWorkbench
		period: (Duration milliSeconds: 100);
		add: interfaceDefinitionToBeRemoved;
		add: interfaceDefinitionToBeUsed;
		remove: interfaceDefinitionToBeRemoved.

	lab runExperiment.

	[ self waitRecordingIsFinishedFor: interfaceDefinitionToBeUsed ]
		valueWithin: 2 seconds
		onTimeout: [ self fail ].

	self denyEmpty: (self recordedObservationsFor: interfaceDefinitionToBeUsed).
	self assertEmpty: (self recordedObservationsFor: interfaceDefinitionToBeRemoved)