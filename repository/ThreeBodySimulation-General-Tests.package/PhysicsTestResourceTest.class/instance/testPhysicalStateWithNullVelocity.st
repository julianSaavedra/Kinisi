tests
testPhysicalStateWithNullVelocity

	| physicalState |
	physicalState := testResource physicalStateWithNullVelocity.

	self assert: physicalState velocity isZero