tests
testCreationFromNumbersAndUnitGivingYComponentOnly

	| measureVector |
	measureVector := MeasureVector y: 1 with: newton.
	
	self assert: measureVector x isZero.
	self assert: measureVector y equals: oneNewton.
	self assert: measureVector z isZero