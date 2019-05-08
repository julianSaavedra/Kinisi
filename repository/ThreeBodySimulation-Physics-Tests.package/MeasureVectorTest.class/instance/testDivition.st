tests
testDivition

	| threeNewtonVectorialMeasure |
	threeNewtonVectorialMeasure := MeasureVector x: 3 y: 3 z: 3 with: newton.
	
	self
		assert: (threeNewtonVectorialMeasure / 3)
		equals: (MeasureVector x: 1 y: 1 z: 1 with: newton)