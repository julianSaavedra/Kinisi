tests
testDescriptionCreationShouldRaiseAnErrorIfMeasureUnitIsNotIncludedInUnitOptions

	self
		should: [ MeasurePresenterDescription labeled: label with: oneMeter changingModelWith: changeBlock and: #()]
		raise: UserInterfaceError