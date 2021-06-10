tests
testExperimentIsObservedThroughDisplayWithInterfaceProcessingResult

	| interfaceDefinition displayManager experiment display |
	interfaceDefinition := self numberToLabelRecordingInterfaceNamed: 'NumberToName'.
	observationWorkbench add: interfaceDefinition.
	experiment := lab newExperiment.
	displayManager := RecorderDisplayManager new.
	display := (displayManager displaysFor: experiment) first.
	self assertEmpty: display shownObservations.
	
	experiment run.
	self waitUnilIsFinished: display.
	
	self
		assert: (self recordedObservationsFor: interfaceDefinition)
		equals: display shownObservations 