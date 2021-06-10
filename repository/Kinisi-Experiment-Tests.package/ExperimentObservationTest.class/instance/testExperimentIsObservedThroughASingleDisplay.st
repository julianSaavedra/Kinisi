tests
testExperimentIsObservedThroughASingleDisplay

	| interfaceDefinition displayProvider experiment display |
	interfaceDefinition := self simplePassthroughInterfaceNamed: 'ObservationsCollector'.
	observationWorkbench add: interfaceDefinition.
	experiment := lab newExperiment.
	
	displayProvider := DisplayProvider using: (PluggableDisplayProviderSpecification with: [ ObservationsRecorderDisplay new ]).
	display := (displayProvider displaysFor: experiment) first.
	self assertEmpty: display shownObservations.
	
	experiment run.
	self waitUnilIsFinished: display.
	
	self assert: experiment result wasObservedIn: display