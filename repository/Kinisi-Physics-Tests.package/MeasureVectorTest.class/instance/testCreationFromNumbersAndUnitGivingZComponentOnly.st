tests
testCreationFromNumbersAndUnitGivingZComponentOnly

	| measureVector |
	measureVector := MeasureVector z: 1 with: newton.
	
	self assert: measureVector x isZero.
	self assert: measureVector y isZero.
	self assert: measureVector z equals: oneNewton