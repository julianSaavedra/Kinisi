tests
testTimeCannotBeNegative

	| originalState |
	originalState := PhysicalState
		withMass: testResource oneKilogram
		position: testResource nullPosition
		velocity: testResource nullVelocity
		andAcceleration: testResource nullAcceleration.

	self
		should: [ PhysicalStateChange
				of: originalState
				during: testResource negativeTime
				perceiving: testResource nullForce ]
		raise: PhysicsModelError