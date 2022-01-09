initialization
connectPresenters

	classes whenSelectionChangedDo: [:selection | 
		selection selectedItem ifNotNil: [:selectedClass | self setSelectedClassTestsFrom: selectedClass ]].
	selectedClassTests whenSelectionChangedDo: [:selection | self run: selection selectedItem ]