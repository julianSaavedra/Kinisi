tests
testVectorialProduct

	| aVector anotherVector |
	aVector := MeasureVector x: 2 y: 0 z: 1 with: meter.
	anotherVector := MeasureVector x: 1 y: -1 z: 3 with: meter.
	
	self
		assert: (aVector vectorialProduct: anotherVector)
		equals: (MeasureVector x: 1 y: -5 z: -2 with: meter * meter)