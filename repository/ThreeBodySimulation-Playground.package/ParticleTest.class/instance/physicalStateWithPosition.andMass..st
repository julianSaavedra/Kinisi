test support
physicalStateWithPosition: aPosition andMass: massMeasure
	
	^PhysicalState
		withMass: massMeasure
		position: aPosition
		velocity: testResource nullVelocity
		andAcceleration: testResource nullAcceleration