tests
testExperimentIsNotObservedIfAllInterfaceSpecsAreRemoved

	| interfaceDefinition |
	interfaceDefinition := self recordingInterfaceDefinitionNamed: 'ObservationsCollector'.
	observationWorkbench
		add: interfaceDefinition;
		removeAllSpecs.

	lab runExperiment.

	self assertEmpty: (self recordedObservationsFor: interfaceDefinition)