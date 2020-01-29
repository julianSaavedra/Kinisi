tests
testAnAmountInMetersInYVector

	self
		assert: (testResource vectorWithYOnlyWithMeters: 2)
		equals: (MeasureVector y: 2 with: unitProvider meter)