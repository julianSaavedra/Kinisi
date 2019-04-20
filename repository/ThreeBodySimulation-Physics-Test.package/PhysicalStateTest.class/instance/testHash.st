tests
testHash

	| aState anotherState position velocity acceleration |
	position := MeasureVector x: 1 y: 1 z: 1 with: meter.
	velocity := MeasureVector x: 2 y: 2 z: 2 with: meter / second.
	acceleration := MeasureVector x: 3 y: 3 z: 3 with: meter / second / second.

	aState := PhysicalState withPosition: position velocity: velocity andAcceleration: acceleration.
	anotherState := PhysicalState withPosition: position velocity: velocity andAcceleration: acceleration.
	
	self
		assert: aState hash
		equals: anotherState hash