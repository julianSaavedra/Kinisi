private
replaceCurrentSelectedDefinitionWith: newDefinition
 
	| definitionToBeRemoved |
	definitionToBeRemoved := definitions selectedItem.
	workbench remove: definitionToBeRemoved.
	workbench add: newDefinition.
	definitions items replaceAll: definitionToBeRemoved with: newDefinition.
	definitions selectItem: newDefinition