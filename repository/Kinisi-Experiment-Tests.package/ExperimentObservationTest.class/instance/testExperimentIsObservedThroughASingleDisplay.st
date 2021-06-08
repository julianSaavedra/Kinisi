tests
testExperimentIsObservedThroughASingleDisplay

	| interfaceDefinition displayManager experiment display |
	interfaceDefinition := self simplePassthroughInterfaceNamed: 'ObservationsCollector'.
	observationWorkbench add: interfaceDefinition.
	experiment := lab newExperiment.
	displayManager := RecorderDisplayManager new.
	display := (displayManager displaysFor: experiment) first.
	self assertEmpty: display shownObservations.
	
	experiment run.
	self waitUnilIsFinished: display.
	
	self assert: experiment result wasObservedIn: display