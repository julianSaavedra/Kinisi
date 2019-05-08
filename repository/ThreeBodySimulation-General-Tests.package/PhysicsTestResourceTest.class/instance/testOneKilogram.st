tests
testOneKilogram

	| oneKilogram |
	oneKilogram := unitProvider kilogram with: 1.
	
	self assert: testResource oneKilogram equals: oneKilogram