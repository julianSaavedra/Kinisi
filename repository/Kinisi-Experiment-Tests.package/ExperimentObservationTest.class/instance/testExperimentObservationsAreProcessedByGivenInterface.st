tests
testExperimentObservationsAreProcessedByGivenInterface

	| interfaceDefinition |
	interfaceDefinition := self recordingInterfaceDefinitionNamed: 'ObservationsCollector'.
	observationWorkbench add: interfaceDefinition.

	lab newExperiment run.
	self waitRecordingIsFinishedForInterfaceBasedOn: interfaceDefinition.
	
	self assert: lab lastResult wasProcessedBasedOn: interfaceDefinition