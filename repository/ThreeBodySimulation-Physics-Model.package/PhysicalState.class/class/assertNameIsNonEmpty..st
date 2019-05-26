asserting
assertNameIsNonEmpty: aString

	aString ifEmpty: [ PhysicsModelError signal: 'Particle name must not be empty.' ]