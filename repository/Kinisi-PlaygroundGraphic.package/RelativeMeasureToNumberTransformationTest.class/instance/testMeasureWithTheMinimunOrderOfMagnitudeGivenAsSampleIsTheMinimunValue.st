tests
testMeasureWithTheMinimunOrderOfMagnitudeGivenAsSampleIsTheMinimunValue

	| measures transformation transformedValue |
	measures := Array with: (meter with: 6e24) with: (meter with: 2e30).
	transformation := RelativeMeasureToNumberTransformation basedOn: measures withMinimunAt: 10.

	transformedValue := transformation value: (meter with: 8e24).

	self assert: transformedValue equals: 10