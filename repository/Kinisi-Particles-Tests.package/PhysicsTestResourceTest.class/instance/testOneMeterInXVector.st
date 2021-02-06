tests
testOneMeterInXVector

	self
		assert: testResource oneMeterInXVector
		equals: (MeasureVector x: 1 with: unitProvider meter)