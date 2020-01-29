tests
testParallelTo

	| aVector anotherVector |
	aVector := MeasureVector x: 1 y: 1 z: 1 with: meter.
	anotherVector := MeasureVector x: 2 y: 2 z: 2 with: meter.
	
	self assert: (aVector parallelTo: anotherVector)