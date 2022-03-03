asserting
assertHasInterfaceDefinitions: aWorkbench

	| observationDefinition |
	observationDefinition := aWorkbench observationWorkbench definition.
	self denyEmpty: observationDefinition interfaceDefinitions