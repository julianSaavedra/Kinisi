initialization
initializeCanvas

	canvas := self instantiate: SpRoassalPresenter.
	canvas 	script: [:aCanvas |
		selectedClassTests selection selectedItem
			ifNotNil: [ :selectedTest | selectedTest runCaseOn: aCanvas ] ]