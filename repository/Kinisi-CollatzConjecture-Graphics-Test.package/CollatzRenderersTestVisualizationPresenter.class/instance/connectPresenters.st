initialization
connectPresenters

	classes whenSelectionChangedDo: [ :selection | 
		self setSelectedClassTestsFrom: selection selectedItem ].
	selectedClassTests whenSelectionChangedDo: [ :selection | canvas refresh ]