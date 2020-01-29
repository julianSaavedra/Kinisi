tests
testOneMeterInAllComponentsVector

	| oneMeter |
	oneMeter := unitProvider meter with: 1.

	self
		assert: testResource oneMeterInAllComponentsVector
		equals: (MeasureVector x: oneMeter y: oneMeter z: oneMeter)