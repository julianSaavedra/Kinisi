tests
testKilometerWith

	| twoKilometers |
	twoKilometers := unitProvider kilometer with: 2.
	
	self assert: (testResource kilometerWith: 2) equals: twoKilometers