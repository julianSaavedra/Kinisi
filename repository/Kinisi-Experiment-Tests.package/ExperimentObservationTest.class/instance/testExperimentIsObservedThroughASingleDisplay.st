tests
testExperimentIsObservedThroughASingleDisplay

	| interfaceDefinition displayProvider experiment display specifiedDisplay displayProviderSpec |
	interfaceDefinition := self simplePassthroughInterfaceNamed: 'ObservationsCollector'.
	observationWorkbench add: interfaceDefinition.
	experiment := lab newExperiment.

	specifiedDisplay := ObservationsRecorderDisplay new.
	displayProviderSpec := PluggableDisplayProviderSpecification allDisplaysAs: [ specifiedDisplay ].
	displayProvider := DisplayProvider using: displayProviderSpec.
	display := (displayProvider displaysFor: experiment) first.
	self assert: display identicalTo: specifiedDisplay.
	self assertEmpty: display shownObservations.

	experiment run.
	self waitUnilIsFinished: display.

	self assert: experiment result wasObservedIn: display