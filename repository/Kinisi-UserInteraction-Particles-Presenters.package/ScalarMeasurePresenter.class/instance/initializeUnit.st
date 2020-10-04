initialization
initializeUnit

	unit := self newDropList.
	unit
		items: unitOptions;
		selectItem: measure unit;
		whenSelectedItemChangedDo: [ :newUnit | self updateModelWith: newUnit and: measure amount ]