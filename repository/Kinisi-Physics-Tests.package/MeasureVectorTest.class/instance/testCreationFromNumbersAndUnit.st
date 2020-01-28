tests
testCreationFromNumbersAndUnit

	| measureVector |
	measureVector := MeasureVector x: 1 y: 1 z: 1 with: newton.
	
	self assert: measureVector x equals: oneNewton.
	self assert: measureVector y equals: oneNewton.
	self assert: measureVector z equals: oneNewton