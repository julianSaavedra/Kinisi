tests
testCreationFromMeasuresGivingYComponentOnly

	| measureVector |
	measureVector := MeasureVector y: oneNewton.
	
	self assert: measureVector x isZero.
	self assert: measureVector y equals: oneNewton.
	self assert: measureVector z isZero