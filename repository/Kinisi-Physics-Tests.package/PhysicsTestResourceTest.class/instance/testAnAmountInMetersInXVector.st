tests
testAnAmountInMetersInXVector

	self
		assert: (testResource vectorWithXOnlyWithMeters: 2)
		equals: (MeasureVector x: 2 with: unitProvider meter)