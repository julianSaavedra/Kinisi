tests
testOneKilogramInTheOriginPhysicalState

	| physicalState |
	physicalState := testResource oneKilogramInTheOriginPhysicalState.

	self assert: physicalState mass equals: testResource oneKilogram.
	self assert: physicalState position equals: testResource nullPosition