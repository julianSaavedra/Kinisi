asserting
assertMassInNonNegative: massMeasure

	massMeasure negative ifTrue: [ PhysicsModelError signal: 'Mass can not be negative.' ]