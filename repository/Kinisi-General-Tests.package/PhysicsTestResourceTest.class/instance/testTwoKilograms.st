tests
testTwoKilograms

	| twoKilograms |
	twoKilograms := unitProvider kilogram with: 2.
	
	self assert: testResource twoKilograms equals: twoKilograms