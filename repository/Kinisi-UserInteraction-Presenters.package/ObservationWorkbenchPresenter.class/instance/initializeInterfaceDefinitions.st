initialization
initializeInterfaceDefinitions

	interfaceDefinitions := self
		instantiate: ObservationInterfaceDefinitionsWorkbench
		on: workbench.
	interfaceDefinitions definitionOptions: specification interfaceOptions