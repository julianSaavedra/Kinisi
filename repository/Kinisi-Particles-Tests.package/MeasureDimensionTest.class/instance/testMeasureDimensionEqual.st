tests
testMeasureDimensionEqual

	| xDimension anotherXDimension |
	xDimension := MeasureDimension x.
	anotherXDimension := MeasureDimension x.
	
	self assert: xDimension equals: anotherXDimension.
	self deny: xDimension identicalTo: anotherXDimension.
	self deny: xDimension equals: MeasureDimension y