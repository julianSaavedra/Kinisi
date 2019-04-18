tests
testSubtraction

	| oneNewtonVectorialMeasure fourNewtonVectorialMeasure |
	oneNewtonVectorialMeasure := MeasureVector x: 1 y: 1 z: 1 with: newton.
	fourNewtonVectorialMeasure := MeasureVector x: 4 y: 4 z: 4 with: newton.
	
	self
		assert: fourNewtonVectorialMeasure - oneNewtonVectorialMeasure
		equals: (MeasureVector x: 3 y: 3 z: 3 with: newton)