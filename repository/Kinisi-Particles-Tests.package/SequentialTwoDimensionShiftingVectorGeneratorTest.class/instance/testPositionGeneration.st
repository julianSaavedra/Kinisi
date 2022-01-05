tests
testPositionGeneration

	| generator meter |
	meter := UnitProvider soleInstance meter.
	generator := SequentialTwoDimensionShiftingVectorGenerator with: meter.

	self assert: generator next equals: (MeasureVector nullWith: meter).
	self assert: generator next equals: (MeasureVector x: 1 with: meter).
	self assert: generator next equals: (MeasureVector y: 1 with: meter).
	self assert: generator next equals: (MeasureVector x: -1 with: meter).
	self assert: generator next equals: (MeasureVector y: -1 with: meter).
	self assert: generator next equals: (MeasureVector x: 2 with: meter).
	self assert: generator next equals: (MeasureVector y: 2 with: meter).
	self assert: generator next equals: (MeasureVector x: -2 with: meter).
	self assert: generator next equals: (MeasureVector y: -2 with: meter).
	self assert: generator next equals: (MeasureVector x: 3 with: meter).
	self assert: generator next equals: (MeasureVector y: 3 with: meter).