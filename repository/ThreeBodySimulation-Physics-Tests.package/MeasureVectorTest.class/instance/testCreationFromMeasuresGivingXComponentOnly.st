tests
testCreationFromMeasuresGivingXComponentOnly

	| measureVector |
	measureVector := MeasureVector x: oneNewton.
	
	self assert: measureVector x equals: oneNewton.
	self assert: measureVector y isZero.
	self assert: measureVector z isZero