tests
testCreationFailsIfComponentsAreNotInTheSameDomain

	self
		should: [ MeasureVector x: oneNewton y: oneMeter z: oneNewton ]
		raise: PhysicsModelError