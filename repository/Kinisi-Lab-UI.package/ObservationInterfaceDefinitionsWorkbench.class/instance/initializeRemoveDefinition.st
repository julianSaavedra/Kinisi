initialization
initializeRemoveDefinition

	removeDefinition := self newButton.
	removeDefinition label: 'Remove'.
	removeDefinition action: [ self removeDefinitionAction ].
	removeDefinition whenActionPerformedDo: [ self refillDefinitionList ]