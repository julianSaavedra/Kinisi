tests
testEquals

	| oneNewtonMeasureVector anotherOneNewtonMeasureVector oneMeterMeasureVector |
	oneNewtonMeasureVector := MeasureVector x: 1 y: 1 z: 1 with: newton.
	anotherOneNewtonMeasureVector := MeasureVector x: 1 y: 1 z: 1 with: newton.
	oneMeterMeasureVector := MeasureVector x: 1 y: 1 z: 1 with: meter.
		
	self assert: oneNewtonMeasureVector = anotherOneNewtonMeasureVector.
	self deny: oneNewtonMeasureVector = oneMeterMeasureVector