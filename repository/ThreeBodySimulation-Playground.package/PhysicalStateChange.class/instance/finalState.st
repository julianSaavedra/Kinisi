accessing
finalState

	| meter second |
	meter:= UnitProvider soleInstance meter.
	second := UnitProvider soleInstance second.
	
	^PhysicalState
		withPosition: (MeasureVector x: 2 y: 2 z: 2 with: meter)
		velocity: (MeasureVector x: 2 y: 2 z: 2 with: meter / second)
		andAcceleration: (MeasureVector x: 1 y: 1 z: 1 with: meter / second / second)