tests
testNewPhysicalStateIsCreated

	| position velocity acceleration meter second originalState aForce stateChange kilogram mass |

	kilogram := UnitProvider soleInstance kilogram.
	meter := UnitProvider soleInstance meter.
	second := UnitProvider soleInstance second.
	mass := kilogram with: 1.
	position := MeasureVector x: 2 y: 2 z: 2 with: meter.
	velocity := MeasureVector x: 2 y: 2 z: 2 with: meter / second.
	acceleration := MeasureVector x: 1 y: 1 z: 1 with: meter / second / second.
	aForce := MeasureVector x: 1 	y: 1 z: 1 with: UnitProvider soleInstance newton.

	originalState := PhysicalState withMass: mass position: position velocity: velocity andAcceleration: acceleration..

	stateChange := PhysicalStateChange of: originalState causedBy: aForce during: (second with: 2).

	self deny: stateChange finalState == originalState