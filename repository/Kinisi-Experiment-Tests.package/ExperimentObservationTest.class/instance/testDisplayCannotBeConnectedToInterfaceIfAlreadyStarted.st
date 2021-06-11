tests
testDisplayCannotBeConnectedToInterfaceIfAlreadyStarted

	| interfaceDefinition displayProvider experiment specifiedDisplay displayProviderSpec |
	interfaceDefinition := self simplePassthroughInterfaceNamed: 'ObservationsCollector'.
	observationWorkbench add: interfaceDefinition.
	experiment := lab newExperiment.

	specifiedDisplay := ObservationsRecorderDisplay new.
	displayProviderSpec := PluggableDisplayProviderSpecification allDisplaysAs: [ specifiedDisplay ].
	displayProvider := DisplayProvider using: displayProviderSpec.
	
	experiment run.
	
	self
		should: [displayProvider displaysFor: experiment]
		raise: Error
		whoseDescriptionIncludes: 'Interface cannot be conected to a display after it has started'