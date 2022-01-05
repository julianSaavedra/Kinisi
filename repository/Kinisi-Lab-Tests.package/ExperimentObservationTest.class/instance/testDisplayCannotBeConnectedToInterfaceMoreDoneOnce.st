tests
testDisplayCannotBeConnectedToInterfaceMoreDoneOnce

	| interfaceDefinition displayProvider experiment specifiedDisplay displayProviderSpec displays |
	interfaceDefinition := self simplePassthroughInterfaceNamed: 'ObservationsCollector'.
	observationWorkbench add: interfaceDefinition.
	experiment := lab newExperiment.

	specifiedDisplay := ObservationsRecorderDisplay new.
	displayProviderSpec := PluggableDisplayProviderSpecification allDisplaysAs: [ specifiedDisplay ].
	displayProvider := DisplayProvider using: displayProviderSpec.
	displays := displayProvider displaysFor: experiment.
	
	self
		should: [displayProvider displaysFor: experiment]
		raise: Error
		whoseDescriptionIncludes: 'Interface is already connected'