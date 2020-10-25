tests
testDescriptionReturnsDifferentCollectionInstancesWhenAskedForTheUnitOptions

	| description |
	description := MeasurePresenterDescription labeled: label with: oneMeter changingModelWith: changeBlock and: options.

	self deny: description unitOptions == description unitOptions