tests
testExperimentIsObservedThroughTwoDisplays

	| interfaceADefinition interfaceBDefinition experiment displayProvider displays |
	interfaceADefinition := self simplePassthroughInterfaceNamed: 'InterfaceA'.
	interfaceBDefinition := self simplePassthroughInterfaceNamed: 'InterfaceB'.
	observationWorkbench
		add: interfaceADefinition;
		add: interfaceBDefinition.
	
	experiment := lab newExperiment.
	displayProvider := DisplayProvider using: (PluggableDisplayProviderSpecification with: [ ObservationsRecorderDisplay new ]).
	displays := displayProvider displaysFor: experiment.
	
	experiment run.
	
	self waitUnilIsFinished: displays first.
	self waitUnilIsFinished: displays second.
	
	self assert: experiment result wasObservedIn: displays first.
	self assert: experiment result wasObservedIn: displays second