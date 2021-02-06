tests
testPhysicalStateWithGivenMassAndPosition

	| physicalState |
	physicalState := testResource physicalStateWith: testResource oneKilogram in: testResource nullPosition.

	self assert: physicalState mass equals: testResource oneKilogram.
	self assert: physicalState position equals: testResource nullPosition