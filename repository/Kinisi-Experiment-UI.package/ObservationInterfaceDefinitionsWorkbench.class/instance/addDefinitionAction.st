private
addDefinitionAction

	self definitionToBeAdded ifNotNil:[ :interfaceDefinition |
		workbench add: interfaceDefinition ]