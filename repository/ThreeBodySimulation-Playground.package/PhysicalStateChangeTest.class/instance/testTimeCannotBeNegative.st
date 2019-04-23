tests
testTimeCannotBeNegative

	| position velocity acceleration meter second originalState aForce mass |

	mass := UnitProvider soleInstance kilogram with: 1.
	meter := UnitProvider soleInstance meter.
	second := UnitProvider soleInstance second.
	position := MeasureVector nullWith: meter.
	velocity := MeasureVector nullWith: meter / second.
	acceleration := MeasureVector nullWith: meter / second / second.
	aForce := MeasureVector x: 1 y: 1 z: 1 with: UnitProvider soleInstance newton.

	originalState := PhysicalState withMass: mass position: position velocity: velocity andAcceleration: acceleration.

	self
		should: [ PhysicalStateChange of: originalState causedBy: aForce during: (second with: -1) ]
		raise: SimulationError