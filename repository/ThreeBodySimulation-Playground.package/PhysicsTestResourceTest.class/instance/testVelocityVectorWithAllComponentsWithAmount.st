tests
testVelocityVectorWithAllComponentsWithAmount

	| velocityMeasure |
	velocityMeasure := unitProvider standardVelocityUnit with: 1.
	
	self
		assert: (testResource velocityVectorWithAllComponentsWithAmount: 1)
 		equals: (testResource vectorWithAllComponentsWith: velocityMeasure)