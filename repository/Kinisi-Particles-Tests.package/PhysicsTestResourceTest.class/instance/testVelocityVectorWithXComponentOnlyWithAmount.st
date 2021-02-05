tests
testVelocityVectorWithXComponentOnlyWithAmount

	self
		assert: (testResource velocityVectorWithXComponentOnlyWithAmount: 1)
 		equals: (MeasureVector x: 1 with: unitProvider standardVelocityUnit)