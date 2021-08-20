applying
applyOn: workbench

	workbench period: period.
	interfaceDefinitions do: [ :interfaceDefinition | 
		workbench add: interfaceDefinition ]