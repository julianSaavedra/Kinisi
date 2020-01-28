tests
testDescriptionReturnsCollectionWithGivenMeasureUnitIfNoCollectionIsGivenWhenCreated

	| description |
	description := MeasurePresenterDescription labeled: label with: oneMeter changingModelWith: changeBlock.

	self assert: description unitOptions size equals: 1.
	self assert: (description unitOptions includes: meter)