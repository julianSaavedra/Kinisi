tests
testMeasureTenRaisedToSixTimesTheOrderOfMagnitudeToTheMinimunOrderOfMagnitudeGivenAsSampleIsSixTimesTheMinimunValue

	| minimunValue measures transformation transformedValue |
	measures := Array with: (meter with: 6e24) with: (meter with: 2e30).
	minimunValue := 10.
	transformation := RelativeMeasureToNumberTransformation basedOn: measures withMinimunAt: minimunValue.

	transformedValue := transformation value: (meter with: 8e30).

	self assert: transformedValue // minimunValue equals: 6