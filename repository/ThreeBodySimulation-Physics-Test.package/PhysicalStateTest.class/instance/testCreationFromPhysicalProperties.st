tests
testCreationFromPhysicalProperties

	| position velocity acceleration state |
	position := MeasureVector x: 1 y: 1 z: 1 with: meter.
	velocity := MeasureVector x: 2 y: 2 z: 2 with: meter / second.
	acceleration := MeasureVector x: 3 y: 3 z: 3 with: meter / second / second.
	
	state := PhysicalState withPosition: position velocity: velocity andAcceleration: acceleration.

	self assert: state position equals: position.
	self assert: state velocity equals: velocity.
	self assert: state acceleration equals: acceleration