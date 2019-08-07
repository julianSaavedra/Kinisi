tests
testMeasureWithNegativeAmountHasTheSameResultAsItOpposite

	| measures transformation transformedValueOfNegative transformedValueOfPositive |
	measures := Array with: (meter with: 6e24) with: (meter with: 2e30).
	transformation := RelativeMeasureToNumberTransformation basedOn: measures withMinimunAt: 10.

	transformedValueOfNegative := transformation value: (meter with: -8e28).
	transformedValueOfPositive := transformation value: (meter with: 8e28).
	
	self assert: transformedValueOfNegative equals: transformedValueOfPositive