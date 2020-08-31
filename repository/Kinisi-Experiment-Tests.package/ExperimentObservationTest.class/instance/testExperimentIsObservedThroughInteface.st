tests
testExperimentIsObservedThroughInteface

	| interfaceDefinition |
	interfaceDefinition := self recordingInterfaceDefinitionNamed: 'ObservationsCollector'.
	observationWorkbench add: interfaceDefinition.

	lab runExperiment.
	self waitRecordingIsFinishedFor: interfaceDefinition.
	
	self assert: lab lastResult wasObsevedBasedOn: interfaceDefinition