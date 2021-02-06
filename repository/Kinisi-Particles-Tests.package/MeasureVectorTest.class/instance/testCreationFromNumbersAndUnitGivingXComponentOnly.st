tests
testCreationFromNumbersAndUnitGivingXComponentOnly

	| measureVector |
	measureVector := MeasureVector x: 1 with: newton.
	
	self assert: measureVector x equals: oneNewton.
	self assert: measureVector y isZero.
	self assert: measureVector z isZero