asserting
assertValidMass: targetMass

	(targetMass negative or: [ targetMass isZero ]) ifTrue: [ PhysicsModelError signal: 'Mass can not be negative or zero.' ]