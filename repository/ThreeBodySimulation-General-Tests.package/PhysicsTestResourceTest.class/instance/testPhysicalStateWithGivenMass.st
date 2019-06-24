tests
testPhysicalStateWithGivenMass

	| physicalState |
	physicalState := testResource physicalStateWith: testResource oneKilogram.

	self assert: physicalState mass equals: testResource oneKilogram