validation
assertValidMass: aMass

	aMass negative ifTrue: [ SimulationError signal: 'Mass cannnot be negative.' ]