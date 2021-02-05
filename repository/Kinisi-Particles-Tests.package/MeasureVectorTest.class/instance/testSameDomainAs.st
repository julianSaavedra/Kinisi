tests
testSameDomainAs

	| newtonMeasureVector anotherNewtonMeasureVector meterMeasureVector |
	newtonMeasureVector := MeasureVector x: 1 y: 1 z: 1 with: newton.
	anotherNewtonMeasureVector := MeasureVector x: 12 y: 12 z: 12 with: newton.
	meterMeasureVector := MeasureVector x: 2 y: 2 z: 2 with: meter.

	self assert: (newtonMeasureVector sameDomainAs: anotherNewtonMeasureVector).
	self deny: (newtonMeasureVector sameDomainAs: meterMeasureVector)