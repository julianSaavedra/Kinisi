tests
testTimeCannotBeNegative

	| originalState |
	originalState := testResource physicalStateWith: testResource oneKilogram.
	
	self
		should: [ PhysicalStateChange
				of: originalState
				during: testResource negativeTime
				perceiving: testResource nullForce ]
		raise: PhysicsModelError