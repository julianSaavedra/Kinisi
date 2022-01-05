tests
testExperimentIsObservedThroughDisplaySpecifiedByInterfaceSpecWithGivenDisplay

	| interfaceDefinition displayProvider experiment display pluggableSpecifiedDisplay displayProviderSpec |
	pluggableSpecifiedDisplay := ObservationsRecorderDisplay new.
	interfaceDefinition := self
		simplePassthroughInterfaceNamed: 'ObservationsCollector'
		displayingWith: [ pluggableSpecifiedDisplay ].
	observationWorkbench add: interfaceDefinition.
	experiment := lab newExperiment.
	
	displayProviderSpec := PluggableDisplayProviderSpecification allDisplaysAs: [ #NoSpecificDisplayProvided ].
	displayProvider := DisplayProvider using: displayProviderSpec.
	display := (displayProvider displaysFor: experiment) first.

	self assert: display identicalTo: pluggableSpecifiedDisplay.
	self assertEmpty: display shownObservations.

	experiment run.
	self waitUnilIsFinished: display.

	self assert: experiment result wasObservedIn: display