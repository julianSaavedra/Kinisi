tests
testEqual

	| aState position velocity acceleration anotherState mass |

	mass := kilogram with: 1.
	position := MeasureVector x: 2 y: 2 z: 2 with: meter.
	velocity := MeasureVector x: 3 y: 3 z: 3 with: meter / second.
	acceleration := MeasureVector x: 4 y: 4 z: 4 with: meter / second / second.
	aState := PhysicalState withMass: mass position: position velocity: velocity andAcceleration: acceleration.

	anotherState := PhysicalState withMass: mass position: position velocity: velocity andAcceleration: acceleration.
	self assert: aState equals: anotherState.

	anotherState := PhysicalState
		withMass: (MeasureVector nullWith: kilogram)
		position: position
		velocity: velocity
		andAcceleration: acceleration.
	self deny: aState equals: anotherState.

	anotherState := PhysicalState withMass: mass
		position: (MeasureVector nullWith: meter)
		velocity: velocity
		andAcceleration: acceleration.
	self deny: aState equals: anotherState.

	anotherState := PhysicalState withMass: mass
		position: position
		velocity: (MeasureVector nullWith: meter / second)
		andAcceleration: acceleration.
	self deny: aState equals: anotherState.

	anotherState := PhysicalState
		withMass: mass
		position: position
		velocity: acceleration
		andAcceleration: (MeasureVector nullWith: meter / second / second).
	self deny: aState equals: anotherState