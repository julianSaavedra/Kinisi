tests
testMultiplicationByScalar

	| oneNewtonVectorialMeasure |
	oneNewtonVectorialMeasure := MeasureVector x: 1 y: 1 z: 1 with: newton.
	
	self
		assert: (oneNewtonVectorialMeasure * 3)
		equals: (MeasureVector x: 3 y: 3 z: 3 with: newton)