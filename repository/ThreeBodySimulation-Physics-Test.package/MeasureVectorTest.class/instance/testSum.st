tests
testSum

	| oneNewtonVectorialMeasure twoNewtonVectorialMeasure |
	oneNewtonVectorialMeasure := MeasureVector x: 1 y: 1 z: 1 with: newton.
	twoNewtonVectorialMeasure := MeasureVector x: 2 y: 2 z: 2 with: newton.
	
	self
		assert: oneNewtonVectorialMeasure + twoNewtonVectorialMeasure
		equals: (MeasureVector x: 3 y: 3 z: 3 with: newton)