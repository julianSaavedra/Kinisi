tests
testExperimentObservationsAreNotProcessedByGivenIntefaceIfItsSpecIsRemoved

	| interfaceDefinitionToBeUsed interfaceDefinitionToBeRemoved |
	interfaceDefinitionToBeUsed := self recordingInterfaceDefinitionNamed: 'ObservationsCollectorToBeUsed'.
	interfaceDefinitionToBeRemoved := self recordingInterfaceDefinitionNamed: 'ObservationsCollectorToBeRemoved'.

	observationWorkbench
		add: interfaceDefinitionToBeRemoved;
		add: interfaceDefinitionToBeUsed;
		remove: interfaceDefinitionToBeRemoved.

	lab runExperiment.
	self waitRecordingIsFinishedForInterfaceBasedOn: interfaceDefinitionToBeUsed.

	self denyEmpty: (self recordedObservationsFor: interfaceDefinitionToBeUsed).
	self assertEmpty: (self recordedObservationsFor: interfaceDefinitionToBeRemoved)