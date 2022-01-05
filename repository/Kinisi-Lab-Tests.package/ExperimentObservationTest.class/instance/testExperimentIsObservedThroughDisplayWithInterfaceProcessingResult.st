tests
testExperimentIsObservedThroughDisplayWithInterfaceProcessingResult

	| interfaceDefinition displayProvider experiment display displayProviderSpec |
	interfaceDefinition := self numberToLabelRecordingInterfaceNamed: 'NumberToName'.
	observationWorkbench add: interfaceDefinition.
	
	experiment := lab newExperiment.
	displayProviderSpec := PluggableDisplayProviderSpecification allDisplaysAs: [ ObservationsRecorderDisplay new ].
	displayProvider := DisplayProvider using: displayProviderSpec.
	display := (displayProvider displaysFor: experiment) first.
	self assertEmpty: display shownObservations.

	experiment run.
	self waitUnilIsFinished: display.

	self
		assert: (self recordedObservationsFor: interfaceDefinition)
		equals: display shownObservations