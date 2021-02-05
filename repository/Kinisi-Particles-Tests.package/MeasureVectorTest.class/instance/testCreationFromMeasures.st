tests
testCreationFromMeasures

	| measureVector |
	measureVector := MeasureVector x: oneNewton y: oneNewton z: oneNewton.
	
	self assert: measureVector x equals: oneNewton.
	self assert: measureVector y equals: oneNewton.
	self assert: measureVector z equals: oneNewton