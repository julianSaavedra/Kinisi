tests
testHash

	| oneNewtonMeasureVector anotherOneNewtonMeasureVector |
	oneNewtonMeasureVector := MeasureVector x: 1 y: 1 z: 1 with: newton.
	anotherOneNewtonMeasureVector := MeasureVector x: 1 y: 1 z: 1 with: newton.

	self assert: oneNewtonMeasureVector hash equals: anotherOneNewtonMeasureVector hash