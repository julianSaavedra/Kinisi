private
removeDefinitionAction

	definitions selectedItems ifNotEmpty:[:selectedDefinitions |
		selectedDefinitions do: [ :definition | workbench remove: definition ] ]