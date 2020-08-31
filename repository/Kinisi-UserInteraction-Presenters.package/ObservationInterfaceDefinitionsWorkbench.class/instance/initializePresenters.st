initialization
initializePresenters

	addDefinition := self newButton.
	addDefinition label: 'Add'.
	addDefinition action: [
		self definitionToBeAdded ifNotNil: [:interfaceDefinition |
			workbench add: interfaceDefinition.
			definitions items add: interfaceDefinition.
			definitions updateList]].
	removeDefinition := self newButton.
	removeDefinition label: 'Remove'.
	removeDefinition action: [
		definitions selection selectedItem ifNotNil: [:interfaceDefinition |
			workbench remove: interfaceDefinition.
			definitions items remove: interfaceDefinition.
			definitions updateList ]
		 ].
	removeAllDefinitions := self newButton.
	removeAllDefinitions label: 'Remove all'.
	removeAllDefinitions action: [
		workbench  removeAllSpecs.
		definitions items removeAll.
		definitions updateList].
	
	definitions := self newList.
	definitions display: [:item | item name ].
	definitions items: workbench definition interfaceDefinitions.
	definitions whenSelectionChangedDo: [
		definitions selection selectedItem
			ifNil: [ selectedDefinition := self newNullPresenter ]
			ifNotNil: [:item |
				selectedDefinition := self newLabel.
				selectedDefinition label: item name].
			self update ].
	selectedDefinition := self newNullPresenter.
	
	self focusOrder add: addDefinition; add: removeDefinition; add: removeAllDefinitions; add: definitions.