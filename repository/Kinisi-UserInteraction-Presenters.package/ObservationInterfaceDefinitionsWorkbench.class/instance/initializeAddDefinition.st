initialization
initializeAddDefinition

	addDefinition := self newButton.
	addDefinition label: 'Add'.
	addDefinition action: [ self addDefinitionAction ].
	addDefinition whenActionPerformedDo: [ self refillDefinitionList ]