tests
testAccelerationVectorWithAllComponentsWithAmount

	| accelerationMeasure |
	accelerationMeasure := unitProvider standardAccelerationUnit with: 1.
	
	self
		assert: (testResource accelerationVectorWithAllComponentsWithAmount: 1)
 		equals: (testResource vectorWithAllComponentsWith: accelerationMeasure)