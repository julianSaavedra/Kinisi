tests
testAccelerationVectorWithXComponentOnlyWithAmount

	self
		assert: (testResource accelerationVectorWithXComponentOnlyWithAmount: 1)
 		equals: (MeasureVector x: 1 with: unitProvider standardAccelerationUnit)