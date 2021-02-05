tests
testOneMeterInYVector

	self
		assert: testResource oneMeterInYVector
		equals: (MeasureVector y: 1 with: unitProvider meter)