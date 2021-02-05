private
updateSelectedDefinition

	definitions selectedItems
		ifEmpty: [ self resetSelectedDefinition ]
		ifNotEmpty:[:selectedDefinitions | 
			selectedDefinition := self newLabel.
			selectedDefinition label: selectedDefinitions first name ].
	self update