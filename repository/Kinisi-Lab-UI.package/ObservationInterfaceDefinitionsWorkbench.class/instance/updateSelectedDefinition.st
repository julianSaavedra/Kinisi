private
updateSelectedDefinition

	definitions selectedItems
		ifEmpty: [ self resetSelectedDefinition ]
		ifNotEmpty: [ :selectedDefinitions | 
			self updateSelectedDefinitionWith: selectedDefinitions first ].
	self update