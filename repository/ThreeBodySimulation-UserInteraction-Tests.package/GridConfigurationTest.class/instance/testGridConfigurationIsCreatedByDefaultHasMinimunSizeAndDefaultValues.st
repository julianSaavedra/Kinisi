tests
testGridConfigurationIsCreatedByDefaultHasMinimunSizeAndDefaultValues

	| configuration |
	configuration := GridConfiguration new.

	self assert: configuration size equals: configuration minimunSize.
	self assert: configuration color equals: configuration defaultColor.
	self assert: configuration scale equals: configuration defaultMeasure