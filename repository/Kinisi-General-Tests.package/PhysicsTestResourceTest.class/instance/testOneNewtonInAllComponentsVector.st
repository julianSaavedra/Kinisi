tests
testOneNewtonInAllComponentsVector

	| oneNewton |
	oneNewton := unitProvider newton with: 1.

	self
		assert: testResource oneNewtonInAllComponentsVector
		equals: (MeasureVector x: oneNewton y: oneNewton z: oneNewton)