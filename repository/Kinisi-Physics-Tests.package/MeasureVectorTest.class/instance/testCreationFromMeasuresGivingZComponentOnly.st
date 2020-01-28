tests
testCreationFromMeasuresGivingZComponentOnly

	| measureVector |
	measureVector := MeasureVector z: oneNewton.
	
	self assert: measureVector x isZero.
	self assert: measureVector y isZero.
	self assert: measureVector z equals: oneNewton