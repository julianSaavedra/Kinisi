initialization
initializeRemoveDefinition

	removeDefinition := self newButton.
	removeDefinition label: 'Remove'.
	removeDefinition action: [ self removeDefinitonAction ].
	removeDefinition whenActionPerformedDo: [ self refillDefinitionList ]