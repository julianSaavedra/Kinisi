tests
testNewPhysicalStateIsCreated

	| position velocity acceleration meter second originalState aForce stateChange |
	meter:= UnitProvider soleInstance meter.
	second := UnitProvider soleInstance second.
	position := MeasureVector nullWith: meter.
	velocity := MeasureVector nullWith: meter / second.
	acceleration := MeasureVector nullWith: meter / second / second.
	aForce := MeasureVector x: 1 y: 1 z: 1 with: UnitProvider soleInstance newton.
	
	originalState := PhysicalState withPosition: position velocity: velocity andAcceleration: acceleration.	

	stateChange := PhysicalStateChange of: originalState causedBy: aForce during: (second with: 2).
	
	self deny: stateChange finalState == originalState