tests
testExperimentObservationsAreProcessedByGivenInterface

	| interfaceDefinition |
	interfaceDefinition := self recordingInterfaceDefinitionNamed: 'ObservationsCollector'.
	observationWorkbench add: interfaceDefinition.

	lab runExperiment.
	self waitRecordingIsFinishedForInterfaceBasedOn: interfaceDefinition.
	
	self assert: lab lastResult wasProcessedBasedOn: interfaceDefinition