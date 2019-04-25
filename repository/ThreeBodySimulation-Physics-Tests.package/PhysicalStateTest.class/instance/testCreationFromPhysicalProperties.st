tests
testCreationFromPhysicalProperties

	| position velocity acceleration state mass |

	mass := kilogram with: 1.
	position := MeasureVector x: 2 y: 2 z: 2 with: meter.
	velocity := MeasureVector x: 3 y: 3 z: 3 with: meter / second.
	acceleration := MeasureVector x: 4 y: 4 z: 4 with: meter / second / second.

	state := PhysicalState withMass: mass
		position: position
		velocity: velocity
		andAcceleration: acceleration.

	self assert: state mass equals: mass.
	self assert: state position equals: position.
	self assert: state velocity equals: velocity.
	self assert: state acceleration equals: acceleration