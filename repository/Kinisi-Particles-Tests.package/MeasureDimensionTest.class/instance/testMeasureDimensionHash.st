tests
testMeasureDimensionHash

	| xDimension anotherXDimension |
	xDimension := MeasureDimension x.
	anotherXDimension := MeasureDimension x.
	
	self assert: xDimension hash equals: anotherXDimension hash