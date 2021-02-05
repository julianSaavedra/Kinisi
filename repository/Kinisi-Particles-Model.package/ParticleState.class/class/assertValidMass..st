asserting
assertValidMass: targetMass

	(targetMass negative or: [ targetMass isZero ]) ifTrue: [ PhysicsModelError signal: 'Mass cannot be negative or zero.' ]