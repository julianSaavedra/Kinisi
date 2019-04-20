tests
testEqual

	| aState position velocity acceleration anotherState |
	position := MeasureVector x: 1 y: 1 z: 1 with: meter.
	velocity := MeasureVector x: 2 y: 2 z: 2 with: meter / second.
	acceleration := MeasureVector x: 3 y: 3 z: 3 with: meter / second / second.
	aState := PhysicalState withPosition: position velocity: velocity andAcceleration: acceleration.

	anotherState := PhysicalState withPosition: position velocity: velocity andAcceleration: acceleration.
	self assert: aState equals: anotherState.
	
	anotherState := PhysicalState withPosition: (MeasureVector nullWith: meter) velocity: velocity andAcceleration: acceleration.
	self deny: aState equals: anotherState.
	
	anotherState := PhysicalState withPosition: position velocity: (MeasureVector nullWith: meter/second) andAcceleration: acceleration.
	self deny: aState equals: anotherState.
	
	anotherState := PhysicalState withPosition: position velocity: velocity andAcceleration: 
(MeasureVector nullWith: meter / second / second).
	self deny: aState equals: anotherState