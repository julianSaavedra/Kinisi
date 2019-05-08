tests
testIsZero

	self assert: (MeasureVector nullWith: meter) isZero.
	self deny: (MeasureVector x: 1 y: 1 z: 1 with: meter) isZero