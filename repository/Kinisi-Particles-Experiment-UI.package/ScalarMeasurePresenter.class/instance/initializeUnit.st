private
initializeUnit

	unit := self newDropList.
	unit
		items: unitOptions;
		selectItem: measure unit;
		whenSelectedItemChangedDo: [:newUnit | newUnit ifNotNil: [ self updateModelWith: newUnit and: measure amount ] ]