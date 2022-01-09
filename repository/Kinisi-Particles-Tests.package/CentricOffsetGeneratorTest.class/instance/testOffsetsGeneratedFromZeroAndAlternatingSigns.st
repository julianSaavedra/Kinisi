tests
testOffsetsGeneratedFromZeroAndAlternatingSigns

	| generator |
	generator := CentricOffsetGenerator startingFrom: 0 by: 0.1.

	self assert: generator next equals: 0.
	self assert: generator next equals: 0.1.
	self assert: generator next equals: -0.1.
	self assert: generator next equals: 0.2.
	self assert: generator next equals: -0.2