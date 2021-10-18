tests
testExperimentIsNotObservedIfAllInterfaceSpecsAreRemoved

	| interfaceDefinition |
	interfaceDefinition := self recordingInterfaceDefinitionNamed: 'ObservationsCollector'.
	observationWorkbench
		add: interfaceDefinition;
		removeAllSpecs.

	lab newExperiment run.

	self assertEmpty: (self recordedObservationsFor: interfaceDefinition)