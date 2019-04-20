tests
testStateChangeByForceAppliedToItDuringATimePeriod

	| position velocity acceleration meter second originalState aForce stateChange expectedFinalState |
	meter:= UnitProvider soleInstance meter.
	second := UnitProvider soleInstance second.
	position := MeasureVector x: 2 y: 2 z: 2 with: meter.
	velocity := MeasureVector x: 2 y: 2 z: 2 with: meter / second.
	acceleration := MeasureVector x: 1 y: 1 z: 1 with: meter / second / second.
	aForce := MeasureVector x: 1 y: 1 z: 1 with: UnitProvider soleInstance newton.
	
	originalState := PhysicalState withPosition: (MeasureVector nullWith: meter) velocity: (MeasureVector nullWith: meter) andAcceleration: (MeasureVector nullWith: meter).
	expectedFinalState := PhysicalState withPosition: position velocity: velocity andAcceleration: acceleration.	

	stateChange := PhysicalStateChange of: originalState causedBy: aForce during: (second with: 2).
	
	self assert: stateChange finalState equals: expectedFinalState