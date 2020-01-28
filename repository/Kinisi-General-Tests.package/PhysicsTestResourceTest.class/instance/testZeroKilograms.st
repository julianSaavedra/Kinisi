tests
testZeroKilograms

	| zeroKilograms |
	zeroKilograms := unitProvider kilogram with: 0.
	
	self assert: testResource zeroKilograms equals: zeroKilograms