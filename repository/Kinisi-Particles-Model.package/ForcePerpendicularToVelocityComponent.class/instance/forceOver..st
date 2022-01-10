calculation
forceOver: particle

	| normalizePerpendicularVector normalizeVelocityVector subjectVelocity |
	subjectVelocity := particle velocity.
	normalizeVelocityVector := subjectVelocity normalized.
	normalizePerpendicularVector := perpendicularTransformation transfrom: normalizeVelocityVector.
	^MeasureVector
		  x: normalizePerpendicularVector x amount * forceModule
		  y: normalizePerpendicularVector y amount * forceModule
		  z: normalizePerpendicularVector z amount * forceModule