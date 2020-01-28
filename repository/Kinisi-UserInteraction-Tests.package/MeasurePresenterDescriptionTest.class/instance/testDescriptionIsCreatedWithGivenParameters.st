tests
testDescriptionIsCreatedWithGivenParameters

	| description |
	description := MeasurePresenterDescription labeled: label with: oneMeter changingModelWith: changeBlock and: options.

	self assert: description label equals: label.
	self assert: description model equals: oneMeter.
	self assert: description modelChangingBlock equals: changeBlock.
	self assert: description unitOptions equals: options