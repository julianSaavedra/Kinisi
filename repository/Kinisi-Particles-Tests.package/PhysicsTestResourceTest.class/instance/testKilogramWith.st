tests
testKilogramWith

	| tenKilograms |
	tenKilograms := unitProvider kilogram with: 10.
	
	self assert: (testResource kilogramWith: 10) equals: tenKilograms