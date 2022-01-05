initialization
initializeDefinitions

	definitions := self newList.
	definitions display: [ :item | item name ].
	self refillDefinitionList.
	definitions whenSelectionChangedDo: [ self updateSelectedDefinition ]