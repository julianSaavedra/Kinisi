initialization
initializeRemoveAllDefinitions

	removeAllDefinitions := self newButton.
	removeAllDefinitions label: 'Remove all'.
	removeAllDefinitions action: [ self removeAllDefinitionsAction ].
	removeAllDefinitions
		whenActionPerformedDo: [ self refillDefinitionList ]